class RegisteredVendorsController < ApplicationController
  def new
  end

  def create
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
  end

  def destroy
  end
end
