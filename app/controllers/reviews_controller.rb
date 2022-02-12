class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @booking
    authorize @review
  end

  def create
    @review = Review.new(strong_params)
    @booking = Booking.find(params[:booking_id])
    authorize @review

    @review.booking = @booking
    if @review.save
      redirect_to profile_path, notice: 'Review was successfully created'
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:review).permit(:comment, :stars)
  end
end
