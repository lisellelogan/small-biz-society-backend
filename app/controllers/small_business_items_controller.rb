class SmallBusinessItemsController < ApplicationController
    def index
        items = SmallBusinessItem.all
        render json: SmallBusinessItemSerializer.new(items)
    end

    def show 
        item = SmallBusinessItem.find_by(params[:id])
        render json: SmallBusinessItemSerializer.new(item)
    end
end
