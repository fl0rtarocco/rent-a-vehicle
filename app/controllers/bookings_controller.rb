class BookingsController < ApplicationController
  before_action :find_vehicle
  def new
    @booking = Booking.new
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end
end
