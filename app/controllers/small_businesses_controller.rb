class SmallBusinessesController < ApplicationController
    def index
        small_businesses = SmallBusiness.all
        render json: SmallBusinessSerializer.new(small_businesses, include: [:small_business_items])
    end

    def show 
        small_business = SmallBusiness.find_by(params[:id])
        render json: SmallBusinessSerializer.new(small_business)
    end

    def create 
        small_business = SmallBusiness.find_or_create_by(small_business_params)
        render json: SmallBusinessSerializer.new(small_business)
    end

    private

    def small_business_params
        params.require(:small_business).permit(:name, :price_range, :address)
    end
end
