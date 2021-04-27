class SmallBusinessItemsController < ApplicationController
    def index
        items = SmallBusinessItem.all
        render json: SmallBusinessItemSerializer.new(items, include: [:small_business])
    end

    def show 
        item = SmallBusinessItem.find_by(params[:id])
        render json: SmallBusinessItemSerializer.new(item)
    end

    def create
        item = SmallBusinessItem.find_or_create_by(small_business_item_params)
        render json: SmallBusinessItemSerializer.new(item)
    end

    def destroy 
        item = SmallBusinessItem.find_by(params[:id])
        item.destroy
        render json: {message: "#{item.name} was deleted!"}
    end

    private

    def small_business_item_params
        params.require(:small_business_item).permit(:name, :price, :description, :type_of_product, :image_url, :small_business_id)
    end

end
