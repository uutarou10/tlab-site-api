class UsersController < ApplicationController
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

  private

  def user_params
    params.require(:user).permit(:login_name, :password, :name)
  end
end
