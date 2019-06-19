class Api::V1::BreaksController < ApplicationController
  def index
    @breaks = Break.all
    render json: @breaks
  end

  def create
    @break = Break.new(break_params)
    if @break.save
      render json: @break, status: :accepted
    else
      render json: {errors: @break.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @break = Break.find(params[:id])
    @break.update(break_params)
    if @break.save
      render json: @break, status: :accepted
    else
      render json: {errors: @break.errors.full_messages }, status: :unprocessible_entity
    end

  end

  private

  def break_params
    params.permit(:active, :chosen_url, :chosen_break_time, :user_id)
  end

end
