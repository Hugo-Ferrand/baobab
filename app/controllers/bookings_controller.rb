class BookingsController < ApplicationController

  def show
  
  end

  def create
    @booking = Booking.new(booking_params)
    @tree = Tree.find(params[:tree_id])
    @booking.tree = @tree
    @booking.user = current_user
    @booking.total_price = @tree.price * (@booking.end_date - @booking.start_date)
    @booking.status = "created"
    if @booking.save

      redirect_to "dashboard"
    else
      render "trees/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end
end
