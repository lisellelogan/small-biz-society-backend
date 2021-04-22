class SmallBusinessItemsController < ApplicationController
    def index
        items = SmallBusinessItem.all
        render json: SmallBusinessItemSerializer.new(items)
    end
end
