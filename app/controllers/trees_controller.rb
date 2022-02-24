class TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
    @user = @tree.user
    @booking = Booking.new
  end

  def index
    @trees = Tree.all
    @markers = @trees.geocoded.map do |tree|
      {
        lat: tree.latitude,
        lng: tree.longitude
      }
    end
  end
end
