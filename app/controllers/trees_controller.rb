class TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
    @booking = Booking.new
  end

  def index
    @trees = Tree.all
    @markers = @trees.geocoded.map do |tree|
      {
        lat: tree.latitude,
        lng: tree.longitude,
        info_window: render_to_string(partial: "info_window", locals: { tree: tree })
      }
    end
  end
end
