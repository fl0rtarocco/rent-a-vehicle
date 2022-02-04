class BookingsController < ApplicationController
  before_action :find_vehicle, only: [:new]
  before_action :skip_authorization
  def show
  end



  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.vehicle_id = params[:vehicle_id]
    @booking.user = current_user
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created'
    else
      render :new
    end
  end


  private


  def booking_params
    params.require(:booking).permit(:booking_from, :booking_to)
  end


  def find_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end
end
