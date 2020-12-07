class ApplicationController < ActionController::Base

  # Before any action is performed, call the fetch_user method.
  before_action :fetch_user

  def fetch_user
    # Search for a user by their user id if we can find one in the session hash.
    if session[:user_id].present?
      @registered_vendor = RegisteredVendor.find_by :id => session[:user_id]

      # Clear out the session user_id if no user is found.
      session[:user_id] = nil unless @registered_vendor
    end
  end


  def check_for_login
    redirect_to root_path unless @registered_vendor.present?
  end

  def check_for_admin
    redirect_to root_path unless @registered_vendor.present? && @registered_vendor.admin
  end


end
