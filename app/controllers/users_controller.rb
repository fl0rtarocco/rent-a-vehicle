class UsersController < ApplicationController
  def show
    if params[:format]
      @vehicles = Vehicle.where(user_id: params[:format])
      @user = User.find(params[:format])
    else
      @vehicles = Vehicle.where(user_id: current_user.id)
      @user = User.find(current_user.id)
      # @vehicles.each do |vehicle|
      #   @in_bookings << Booking.where(vehicle_id: vehicle.id)
      # end
      # @bookings = Booking.where(vehicle_id: )
    end

    if current_user
      @out_bookings = Booking.where(user_id: current_user.id)
      @in_bookings = Booking.where(vehicle_id: @vehicles)
    end
      authorize @vehicles
  end
end
