class RegisteredVendorsController < ApplicationController
  def new
    @registered_vendor = RegisteredVendor.new
  end

  def create
    registered_vendor = RegisteredVendor.create registered_vendor_params
    registered_vendor.save
    redirect_to registered_vendor_path(registered_vendor.id)
  end

  def index
    @registered_vendors = RegisteredVendor.all
  end

  def show
    @registered_vendor = RegisteredVendor.find params[:id]
  end

  def edit
    @registered_vendor = RegisteredVendor.find params[:id]

  end

  def update
    registered_vendor = RegisteredVendor.find params[:id]
    registered_vendor.update registered_vendor_params
    redirect_to registered_vendor_path(registered_vendor.id)
  end

  def destroy
    registered_vendor = RegisteredVendor.find params[:id]
    registered_vendor.destroy
    redirect_to registered_vendors_path
  end

  def registered_vendor_params
    params.require(:registered_vendor).permit(:vendor_name, :phone_number, :address, :suburb, :state, :postcode, :website, :logo, :background_image, :hero_image, :opening_hours, :bio)
  end


end
