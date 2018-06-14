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

  def edit
    @booking = Booking.find(params[:id])
    @flat = Flat.find(params[:flat_id])
  end

  def update
    @booking = Booking.find(params[:id])
    @user = current_user

    if @booking.update(booking_params)
      redirect_to dashboard_bookings_path
    else
      render :edit
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.accept

    redirect_to dashboard_bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.decline

    redirect_to dashboard_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin, :checkout, :guests, :flat_id, :status)
  end
end
