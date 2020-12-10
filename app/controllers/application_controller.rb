class ApplicationController < ActionController::Base

  # Before any action is performed, call the fetch_user method.
  before_action :fetch_user

  def fetch_user
    # Search for a user by their user id if we can find one in the session hash.
    if session[:user_id].present?
      @current_user = RegisteredVendor.find_by :id => session[:user_id]
      @current_user = RegisteredUser.find_by :id => session[:user_id]
      if @current_user == nil
        @current_user = RegisteredVendor.find_by :id => session[:user_id]
      end
      # Clear out the session user_id if no user is found.
      session[:user_id] = nil unless @current_user
    end
  end


  def check_for_user_login
    redirect_to root_path unless @current_user.present? && @current_user.has_attribute?(:name)
  end

  def check_for_vendor_login
    redirect_to root_path unless @current_user.present? && @current_user.has_attribute?(:vendor_name)
  end

  def check_for_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin
  end





end
