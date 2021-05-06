class UsersController < ApplicationController
    include UsersHelper

    before_action :require_login, except: [:new, :create]
     
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end
    
    def create
        @user = User.new(user_params)
        @user.save
        session[:user_id] = @user.id
        flash.notice = "#{@user.name} successfully created. Welcome!"
        redirect_to user_path(@user)
    end
end
