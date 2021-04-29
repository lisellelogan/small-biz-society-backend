class SmallBusinessesController < ApplicationController
    def index
        small_businesses = SmallBusiness.all
        render json: SmallBusinessSerializer.new(small_businesses, include: [:small_business_items])
    end

    def show 
        small_business = SmallBusiness.find(params[:id])
        render json: SmallBusinessSerializer.new(small_business)
    end

    def create 
        small_business = SmallBusiness.find_or_create_by(small_business_params)
        render json: SmallBusinessSerializer.new(small_business)
    end

    def update 
        small_business = SmallBusiness.find(params[:id])
        if small_business.update(small_business_params)
            render json: {message: "#{small_business.name} was updated!"}
        else  
            render json: {message: "unable to update biz. please try again!"}
        end
    end

    def destroy
        small_business = SmallBusiness.find(params[:id])
        small_business.destroy
        render json: {message: "#{small_business.name} was deleted!"}
    end

    private

    def small_business_params
        params.require(:small_business).permit(:name, :price_range, :address)
    end
end
