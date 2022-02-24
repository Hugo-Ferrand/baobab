module Owner
  class BookingsController < ApplicationController

    def decline
      @booking = Booking.find(params[:id])
      @booking.status = "declined"
      @booking.save
      redirect_to dashboard_path
    end

    def accept
      @booking = Booking.find(params[:id])
      @booking.status = "validated"
      @booking.save
      redirect_to dashboard_path
    end


  end
end
