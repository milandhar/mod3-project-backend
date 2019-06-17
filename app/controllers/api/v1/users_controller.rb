class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:user_name, :phone_number, :default_url, :default_break_time)
  end

end
