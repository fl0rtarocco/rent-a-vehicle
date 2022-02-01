class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end
  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle)
  end
  def vehicle_params
    params.require(:vehicle).permit(:category, :price, :description, :name)
  end
end

