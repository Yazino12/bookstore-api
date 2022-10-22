class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: { data: @users }, status: :ok
  end

  def show
    @user = User.find_by_id(params[:id])
    render json: { data: @user }, status: :ok
  end
end
