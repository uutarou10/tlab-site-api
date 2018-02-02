class UsersController < ApplicationController
  before_action :authenticate_user

  def index
    users = User.all.select(:id, :login_name, :name)
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create!(user_params)
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update_attributes!(user_params)

    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
