class BookingsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.flat = @flat

    if @booking.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin, :checkout, :guests, :flat_id)
  end
end
