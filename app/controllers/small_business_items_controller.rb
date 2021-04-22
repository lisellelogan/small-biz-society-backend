class SmallBusinessItemsController < ApplicationController
    def index
        items = Item.all
    end
end
