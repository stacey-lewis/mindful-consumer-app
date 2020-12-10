class RegisteredUsersController < ApplicationController

    before_action :check_for_user_login, :only => [:edit, :update, :destroy]

  def new
    @registered_user = RegisteredUser.new
  end #new

  def create
    @registered_user = RegisteredUser.create registered_user_params
    if @registered_user.persisted?
      session[:user_id] = @registered_user.id
      redirect_to root_path
    else
      render :new
    end
  end #create

  # def index
  # end #index

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
    registered_user.attributes = registered_user_params
    registered_user.save
    redirect_to registered_user_path(registered_user.id)

  end #update

  def destroy
    registered_user = RegisteredUser.find params[:id]
    if registered_user.id != @current_user.id
      redirect_to login_path
    else
      registered_user = RegisteredUser.find params[:id]
      registered_user.destroy
      redirect_to root_path
    end
  end

  def registered_user_params
    params.require(:registered_user).permit(:name, :email, :suburb, :phone_number, :opt_in_for_emails, :postcode, :state, :password, :password_confirmation, {consumer_category_ids: []}, {consumer_value_ids: []})
  end


end
