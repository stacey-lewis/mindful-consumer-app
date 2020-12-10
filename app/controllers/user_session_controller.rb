class UserSessionController < ApplicationController
  def new
  end #end new

  def create

    registered_user = RegisteredUser.find_by :email => params[:email]

    if registered_user.present? && registered_user.authenticate(params[:password])

      session[:user_id] = registered_user.id
      redirect_to root_path

    else

      flash[:error] = "Sorry, invalid email or password"
      redirect_to login_user_path
    end #end if
  end #end create

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end #end destroy



end
