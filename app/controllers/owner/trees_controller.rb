module Owner
  class TreesController < ApplicationController
    def new
      @tree = Tree.new
    end


  end
end
