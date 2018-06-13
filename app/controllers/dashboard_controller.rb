class DashboardController < ApplicationController
  def flats
    @flats = current_user.flats
  end

  def bookings
    @bookings = current_user.bookings
  end
end
