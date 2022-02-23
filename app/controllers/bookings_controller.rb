class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @tree = Tree.find(params[:tree_id])
    @booking.tree = @tree
    @booking.user
    if @booking.save
      redirect_to tree_path(@tree)
    else
      render "trees/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end
end
