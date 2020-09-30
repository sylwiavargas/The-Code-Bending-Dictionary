class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorized_to_see_page, only: [:login, :handle_login, :new, :create]
  
  def profile
    render :profile
  end

  def login
    @error = flash[:error]
  end

  def handle_login
    @user = User.find_by(first_name: params[:first_name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to profile_path
    else
      flash[:error] = "Incorrect username or password"
      redirect_to login_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end

  def index
    @users = User.all
  end

  def new
    if check_and_see_if_someone_is_logged_in?
      redirect_to profile_path
    else
      @errors = flash[:errors]
      @user = User.new
      render :new
    end
  end

  
  def create
  @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to users_path
    else 
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    @user = @current_user
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :password)
  end

end