class RegisteredVendorsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @registered_vendors = RegisteredVendor.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
