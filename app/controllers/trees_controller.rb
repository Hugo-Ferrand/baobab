class TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
    @user = @tree.user
    @booking = Booking.new
  end

  def index
    @trees = Tree.all
  end
end
