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
    else
      params[:registered_vendor][:background_image].present?
      response = Cloudinary::Uploader.upload params[:registered_vendor][:background_image]
      p response
      registered_vendor.background_image = response["public_id"]

      registered_vendor.save registered_vendor_params
      redirect_to registered_vendor_path(registered_vendor.id)
    end

  end

  def destroy
    registered_vendor = RegisteredVendor.find params[:id]
    registered_vendor.destroy
    redirect_to registered_vendors_path
  end

  def filter
    # raise "hell"
    # enum category_type: [:home, :office, :mobile, :fax]
      # @filter = RegisteredVendor.consumer_values.where (name: params[:category_type])

    #define how a form will filter results ... check box dropdown
  end


  def registered_vendor_params
    params.require(:registered_vendor).permit(:vendor_name, :phone_number, :address, :suburb, :state, :postcode, :website, :logo, :background_image, :hero_image, :opening_hours, :bio, :password, :password_confirmation, :email_address, :online_store, :instagram, :facebook, {consumer_category_ids: []}, {consumer_value_ids: []})
  end



end
