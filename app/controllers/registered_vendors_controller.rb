class RegisteredVendorsController < ApplicationController

  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:destroy, :new]

  def admin
    if @current_user.admin == false
      redirect_to root_path
    end
  end


  def new
    if @current_user.admin
      @registered_vendor = RegisteredVendor.new
    end #if
  end #new

  def create
    if @current_user.admin
      @registered_vendor = RegisteredVendor.new registered_vendor_params

      if params[:registered_vendor][:logo].present?
        #Forward the uploaded image file on to Cloudinary (using gem):
        response = Cloudinary::Uploader.upload params[:registered_vendor][:logo]
        @registered_vendor.logo = response["public_id"]
      else
        #if we don't do this, then setting the .attributes above puts form junk into this field
        @registered_vendor.logo=nil
      end
      if params[:registered_vendor][:hero_image].present?
        #Forward the uploaded image file on to Cloudinary (using gem):
        response = Cloudinary::Uploader.upload params[:registered_vendor][:hero_image]
        @registered_vendor.hero_image = response["public_id"]
      else
        #if we don't do this, then setting the .attributes above puts form junk into this field
        @registered_vendor.hero_image=nil
      end
      if params[:registered_vendor][:background_image].present?
        #Forward the uploaded image file on to Cloudinary (using gem):
        response = Cloudinary::Uploader.upload params[:registered_vendor][:background_image]
        @registered_vendor.background_image = response["public_id"]
      else
        #if we don't do this, then setting the .attributes above puts form junk into this field
        @registered_vendor.background_image=nil
      end
      # raise "hell"
      @registered_vendor.save

      redirect_to registered_vendors_path
    end
  end #create


  def index
    @registered_vendors = RegisteredVendor.where(:admin => false)
  end #index

  def show
    @registered_vendor = RegisteredVendor.find params[:id]
  end #show

  def edit
    @registered_vendor = RegisteredVendor.find params[:id]
    redirect_to login_path unless @registered_vendor.id == @current_user.id || @current_user.admin
  end #edit

  def update
    registered_vendor = RegisteredVendor.find params[:id]

    if registered_vendor.id != @current_user.id && @current_user.admin == false
      redirect_to login_path
      return
    end #if

    registered_vendor.attributes = registered_vendor_params
    if params[:registered_vendor][:background_image].present?
      response = Cloudinary::Uploader.upload params[:registered_vendor][:background_image]
      p response
      registered_vendor.background_image = response["public_id"]
    else
      #if we don't do this, then setting the .attributes above puts form junk into this field
      registered_vendor.background_image=registered_vendor.background_image
    end #if
    if params[:registered_vendor][:logo].present?
      response = Cloudinary::Uploader.upload params[:registered_vendor][:logo]
      p response
      registered_vendor.logo = response["public_id"]
    else
      #if we don't do this, then setting the .attributes above puts form junk into this field
      registered_vendor.logo=registered_vendor.logo
    end #if
    if params[:registered_vendor][:hero_image].present?
      response = Cloudinary::Uploader.upload params[:registered_vendor][:hero_image]
      p response
      registered_vendor.hero_image = response["public_id"]
    else
      #if we don't do this, then setting the .attributes above puts form junk into this field
      registered_vendor.hero_image=registered_vendor.hero_image
    end #if
    registered_vendor.save
    redirect_to registered_vendor_path(registered_vendor.id)

  end #end update

  def destroy
    registered_vendor = RegisteredVendor.find params[:id]
    registered_vendor.destroy
    redirect_to registered_vendors_path
  end #destroy

  def filter
    if params[:consumer_category_ids].present?
      consumer_category_ids = params[:consumer_category_ids]
      @vendors = RegisteredVendor.joins(:consumer_categories).where(consumer_categories: {id: consumer_category_ids}).group('registered_vendors.id').having('count(*) = ?',consumer_category_ids.count)
    end #if

    if params[:consumer_value_ids].present?
      consumer_value_ids = params[:consumer_value_ids]
      @vendors = RegisteredVendor.joins(:consumer_values).where(consumer_values: {id: consumer_value_ids}).group('registered_vendors.id').having('count(*) = ?',consumer_value_ids.count)
    end #if

    if @vendors ==nil
      redirect_to registered_vendors_path
    elsif @vendors.length == 0
      flash[:error] = 'Sorry, nothing fits that criteria'
    end #if

  end #filter


  def registered_vendor_params
    params.require(:registered_vendor).permit(:admin, :vendor_name, :phone_number, :address, :suburb, :state, :postcode, :website, :logo, :background_image, :hero_image, :opening_hours, :bio, :password, :password_confirmation, :email_address, :online_store, :instagram, :facebook, {consumer_category_ids: []}, {consumer_value_ids: []})
  end #params



end #class
