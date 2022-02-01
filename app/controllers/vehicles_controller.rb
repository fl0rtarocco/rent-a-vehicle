class VehiclesController < ApplicationController
  before_action :find_vehicle, only: [:show]

  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create

    @vehicle = Vehicle.new(strong_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to @vehicle, notice: 'Vehicle was successfully created'
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:vehicle).permit(:description, :category, :price, :name)
  end

end
