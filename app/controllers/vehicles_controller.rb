class VehiclesController < ApplicationController
  before_action :find_vehicle, only: [:show, :edit, :update, :destroy]

  def index
    # @vehicles = Vehicle.all
    @vehicles = policy_scope(Vehicle)
    @markers = @vehicles.geocoded.map do |vehicle|
      {
        lat: vehicle.latitude,
        lng: vehicle.longitude,
        info_window: render_to_string(partial: "info_window", locals: { vehicle: vehicle })
      }
    end
  end

  def show
    # if params[:booking_id]
    #   @booking = Booking.new(booking_params)
    #   @booking.vehicle_id = params[:id]
    #   @booking.user = current_user
    #   @booking.status = "Pending"
    #   if @booking.save
    #     redirect_to @booking, notice: 'Booking was successfully created'
    #   else
    #     render :show
    #   end
    # end
    @booking = Booking.new
  end

  def new
    @vehicle = Vehicle.new
    authorize @vehicle
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    authorize @vehicle

    if @vehicle.save
      redirect_to profile_path, notice: 'Vehicle was successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @vehicle.update(vehicle_params)
    redirect_to vehicle_path(@vehicle), notice: 'Vehicle updated'
  end

  def destroy
    @vehicle.destroy
    redirect_to vehicles_path, notice: 'Vehicle was successfully deleted'

  end

  private

  def booking_params
    params.require(:booking).permit(:booking_from, :booking_to)
  end

  def find_vehicle
    @vehicle = Vehicle.find(params[:id])
    authorize @vehicle
  end

  def vehicle_params
    params.require(:vehicle).permit(:category, :price, :description, :name, :address, photos: [])
  end

end
