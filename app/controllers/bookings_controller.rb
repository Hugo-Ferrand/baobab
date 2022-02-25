class BookingsController < ApplicationController

  def dashboard
    @owner_created_bookings = Booking.includes(:tree).where.not(user: current_user).where(status: "created", tree: { user: current_user })
    @renter_created_bookings = Booking.includes(:tree).where.not(tree: { user: current_user }).where(status: "created", user: current_user)
    @renter_validated_future_bookings = Booking.includes(:tree).where.not(tree: { user: current_user }).where(status: "validated", user: current_user).where('start_date > ?', DateTime.now)
    @renter_validated_past_bookings = Booking.includes(:tree).where.not(tree: { user: current_user }).where(status: "validated", user: current_user).where('end_date < ?', DateTime.now)
    @renter_declined_future_bookings = Booking.includes(:tree).where.not(tree: { user: current_user }).where(status: "declined", user: current_user).where('start_date > ?', DateTime.now)
  end

  def create
    @booking = Booking.new(booking_params)
    @tree = Tree.find(params[:tree_id])
    
    if current_user.nil?
      return redirect_to new_user_session_path, notice: "Please, log yourself first"
    end
    if @booking.end_date.nil? || @booking.start_date.nil?
      return redirect_to tree_path(@tree), notice: "Dates are incorrect"
    end

    @tree = Tree.find(params[:tree_id])
    @booking.tree = @tree
    @booking.user = current_user
    @booking.total_price = @tree.price * (@booking.end_date - @booking.start_date)
    @booking.status = "created"

    if @booking.save

      redirect_to dashboard_path
    else
      render "trees/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comment)
  end
end
