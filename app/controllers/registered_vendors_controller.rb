class RegisteredVendorsController < ApplicationController

  before_action :check_for_login, :only => [:edit, :update, :destroy]

  def new
    @registered_vendor = RegisteredVendor.new
  end

  def create
    @registered_vendor = RegisteredVendor.new registered_vendor_params
    if @current_user.persisted?
      session[:user_id] = @current_user.id
      redirect_to root_path
    else

      if params[:registered_vendor][:background_image].present?
        #Forward the uploaded image file on to Cloudinary (using gem):
        response = Cloudinary::Uploader.upload params[:registered_vendor][:background_image]
        p response
        # raise "file is here"
        @registered_vendor.background_image = response["public_id"]
      end

      #go to the new form because we want to be able to pre-fill with what they entered.
      @registered_vendor.save
    end
  end

  def index
    @registered_vendors = RegisteredVendor.all
    # @consumer_category = ConsumerCategory.first
    # @registered_vendor = RegisteredVendor.find params[:id]
    # enum filter_list: [ConsumerCategory]
    #filter ConsumerCategory through and push onto array? Repeat for ConsumerValue
  end

  def show
    @registered_vendor = RegisteredVendor.find params[:id]
  end

  def edit
    @registered_vendor = RegisteredVendor.find params[:id]
    redirect_to login_path unless @registered_vendor.id == @current_user.id

  end

  def update
    registered_vendor = RegisteredVendor.find params[:id]

    if registered_vendor.id != @current_user.id
      redirect_to login_path
      return
    end

    registered_vendor.attributes = registered_vendor_params
    if params[:registered_vendor][:background_image].present?
      response = Cloudinary::Uploader.upload params[:registered_vendor][:background_image]
      p response
      registered_vendor.background_image = response["public_id"]
    else
      #if we don't do this, then setting the .attributes above puts form junk into this field
      registered_vendor.background_image=nil
    end #if
    registered_vendor.save
    redirect_to registered_vendor_path(registered_vendor.id)

  end #end update

  def destroy
    registered_vendor = RegisteredVendor.find params[:id]
    registered_vendor.destroy
    redirect_to registered_vendors_path
  end

  def filter
    if params[:consumer_category_ids].present?

      consumer_category_ids = params[:consumer_category_ids]

      @vendors = RegisteredVendor.joins(:consumer_categories).where(consumer_categories: {id: consumer_category_ids}).group('registered_vendors.id').having('count(*) = ?',consumer_category_ids.count)
      #
    end

    if params[:consumer_value_ids].present?
      consumer_value_ids = params[:consumer_value_ids]

      @vendors = RegisteredVendor.joins(:consumer_values).where(consumer_values: {id: consumer_value_ids}).group('registered_vendors.id').having('count(*) = ?',consumer_value_ids.count)
    end

    if @vendors == nil
      flash[:error] = "Sorry, nothing fits that criteria."
      redirect_to registered_vendors_path
    end

  end


  def registered_vendor_params
    params.require(:registered_vendor).permit(:vendor_name, :phone_number, :address, :suburb, :state, :postcode, :website, :logo, :background_image, :hero_image, :opening_hours, :bio, :password, :password_confirmation, :email_address, :online_store, :instagram, :facebook, {consumer_category_ids: []}, {consumer_value_ids: []})
  end



end
