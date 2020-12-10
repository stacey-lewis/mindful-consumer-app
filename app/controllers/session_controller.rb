class SessionController < ApplicationController


  def new
  end #end new

  def create

    registered_vendor = RegisteredVendor.find_by :email_address => params[:email_address]

    if registered_vendor.present? && registered_vendor.authenticate(params[:password])

      session[:user_id] = registered_vendor.id

      redirect_to root_path
    else
      flash[:error] = "Sorry, invalid email or password"
      redirect_to login_path
    end #end if
  end #end create

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end #end destroy

end
