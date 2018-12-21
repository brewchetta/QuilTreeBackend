class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user, status: 200
  end

  def update

  end

  def destroy

  end

end
