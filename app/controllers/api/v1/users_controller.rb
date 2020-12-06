# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      before_action :find_user, only: %i[show edit update destroy]
      skip_before_action :authorized_to_see_page, only: %i[login handle_login new create]

      def login
        @error = flash[:error]
      end

      def handle_login
        @user = User.find_by(username: params[:username])
        if @user&.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to profile_path
        else
          flash[:error] = 'Incorrect username or password'
          redirect_to login_path
        end
      end

      def logout
        session[:user_id] = nil
        redirect_to login_path
      end

      def index
        @users = User.all
        render json: @users, status: :accepted
      end

      def show
        render json: @user, status: :accepted
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
        @user = User.create!(user_params)
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

      def find_user
        @user = User.find(params[:id])
      end

      def user_params
        params.permit(:username, :email, :password)
      end
    end
  end
end
