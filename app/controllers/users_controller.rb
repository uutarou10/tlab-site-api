class UsersController < ApplicationController
  before_action :authenticate_user

  def index
    users = User.all
    render json: users.select_attribute
  end

  def show
    user = User.find(params[:id])
    render json: user.select_attribute
  end

  def create
    user = User.create!(user_params)
    render json: user.select_attribute
  end

  def update
    user = User.find(params[:id])
    user.update_attributes!(user_params)

    render json: user.select_attribute
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
