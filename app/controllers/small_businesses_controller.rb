class SmallBusinessesController < ApplicationController
    def index
        small_businesses = SmallBusiness.all
        render json: SmallBusinessSerializer.new(small_businesses, include: [:small_business_items])
    end

    def show 
        small_business = SmallBusiness.find_by(params[:id])
        render json: SmallBusinessSerializer.new(small_business)
    end
end
