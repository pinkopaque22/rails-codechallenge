class Api::V1::VehiclesController < ApplicationController
  def update
    @vehicle = Vehicle.find(params[:id]);
    @vehicle.update(check_params)
    if @vehicle.valid?
      render json: @vehicle
    else
      render json: {errors: @vehicle.errors.full_messages}
    end
  end

  private
  def check_params
    params.permit(:state)
  end
end
