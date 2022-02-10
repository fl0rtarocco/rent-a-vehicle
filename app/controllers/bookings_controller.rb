class BookingsController < ApplicationController
  before_action :find_vehicle, only: [:new]
  before_action :find_booking, only: [:accept, :reject]
  before_action :skip_authorization
  def show
  end



  def new
    @booking = Booking.new
  end

  def create
    if current_user
      @booking = Booking.new(booking_params)
      @booking.vehicle_id = params[:vehicle_id]
      @booking.user = current_user
      @booking.status = "Pending"
      if @booking.save
        redirect_to @booking, notice: 'Booking was successfully created'
      else
        render :new
      end
    else
      redirect_to new_user_session_path
    end
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    # @booking.update(booking_params)
    raise
  end

  def accept
    @booking.status = "Accepted"
    @booking.save
    redirect_to profile_path, notice: 'Booking rejected'
  end

  def reject
    @booking.status = "Rejected"
    @booking.save
    redirect_to profile_path, notice: 'Booking rejected'
  end


  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:booking_from, :booking_to)
  end


  def find_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end
end
