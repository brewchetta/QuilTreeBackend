class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def show
    render json: @user, status: 200
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: 201
    else
      render json: @user.errors.full_messages, status: 406
    end
  end

  def update
    @user.update(user_params)
    render json: @user, status: 202
  end

  def delete
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :bio)
  end

end
