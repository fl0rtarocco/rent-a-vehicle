class UsersController < ApplicationController
  def show
    if params[:format]
      @vehicles = Vehicle.where(user_id: params[:format])
    else
      @vehicles = Vehicle.where(user_id: current_user.id)
    end
    authorize @vehicles
    @name = "#{@vehicles.first.user.first_name} #{@vehicles.first.user.last_name}"
  end
end
