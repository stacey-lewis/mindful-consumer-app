class RegisteredUsersController < ApplicationController

    before_action :check_for_user_login, :only => [:edit, :update, :destroy]

  def new
    @registered_user = RegisteredUser.new
  end #new

  def create
    @registered_user = RegisteredUser.new
    registered_user_params
    @registered_user.save
    redirect_to registered_user_path(@registered_user.id)
  end #create

  def index
  end #index

  def show
    @registered_user = RegisteredUser.find params[:id]
    if @registered_user.id != @current_user.id
      redirect_to login_path
    end
  end #show

  def edit
    @registered_user = RegisteredUser.find params[:id]
    redirect_to login_path unless @registered_user.id == @current_user.id
  end #edit

  def update
    registered_user = RegisteredUser.find params[:id]

    if registered_user.id != @current_user.id
      redirect_to login_path
      return
    end #if
    registered_user.save
    redirect_to registered_user_path(registered_user.id)

  end #update

  def destroy
    if registered_user.id != @current_user.id
      redirect_to login_path
    else
      registered_user = RegisteredUser.find params[:id]
      registered_user.destroy
      redirect_to root_path
    end
  end

  def registered_user_params
    params.require(:registered_user).permit(:name, :email, :suburb, :phone_number, :opt_in_for_emails, :postcode, :state, :password, :password_digest, {consumer_category_ids: []}, {consumer_value_ids: []})
  end


end
