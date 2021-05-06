class UsersController < ApplicationController
  include UsersHelper
  before_action :require_login, except: %i[new create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @created_events = current_user.created_events
    @upcoming_events = current_user.attended_events.upcoming
    @past_events = current_user.attended_events.past
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    flash.notice = "#{@user.name} successfully created. Welcome!"
    redirect_to user_path(@user)
  end
end
