class TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
  end

  def index
    @trees = Tree.all
  end
end
