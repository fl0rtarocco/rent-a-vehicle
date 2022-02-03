class UsersController < ApplicationController
  def show
    if params[:format]
      @vehicles = Vehicle.where(user_id: params[:format])
    else
      @vehicles = Vehicle.where(user_id: current_user.id)
      @out_bookings = Booking.where(user_id: current_user.id)
      @in_bookings = Booking.where(vehicle_id: @vehicles)
      # @vehicles.each do |vehicle|
      #   @in_bookings << Booking.where(vehicle_id: vehicle.id)
      # end
      # @bookings = Booking.where(vehicle_id: )
    end
    authorize @vehicles
    @name = "#{@vehicles.first.user.first_name} #{@vehicles.first.user.last_name}"
  end
end
