module Owner
  class TreesController < ApplicationController
    def new
      @tree = Tree.new
    end

    def create
      @tree = Tree.new(tree_params)
      @tree.user = current_user
      if @tree.save
        redirect_to tree_path(@tree)
      else
        render :new
      end
    end

    private

    def tree_params
      params.require(:tree).permit(:species, :price, :street, :city, :countryname, :description, :photo)
    end
  end
end
