class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
    @vehicles = policy_scope(Vehicle)
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    authorize @vehicle
  end
end
