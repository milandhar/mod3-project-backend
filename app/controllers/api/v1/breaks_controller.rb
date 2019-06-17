class Api::V1::BreaksController < ApplicationController
  def index
    @breaks = Break.all
    render json: @breaks
  end

  def update
    @break = Break.find(params[:id])
    if @break.save
      render json: @break, status: :accepted
    else
      render json: {errors: @break.errors.full_messages }, status: :unprocessible_entity
    end

  end

end
