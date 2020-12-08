class ApplicationController < ActionController::Base

  # Before any action is performed, call the fetch_user method.
  before_action :fetch_user

  def fetch_user
    # Search for a user by their user id if we can find one in the session hash.
    if session[:user_id].present?
      @current_user = RegisteredVendor.find_by :id => session[:user_id]

      # Clear out the session user_id if no user is found.
      session[:user_id] = nil unless @current_user
    end
  end


  def check_for_login
    redirect_to root_path unless @current_user.present?
  end

  def check_for_admin
    redirect_to root_path unless @current_user.present? && @current_user.admin
  end


end
