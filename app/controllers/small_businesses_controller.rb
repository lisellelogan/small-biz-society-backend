class SmallBusinessesController < ApplicationController
    def index
        small_businesses = SmallBusiness.all
        render json: SmallBusinessSerializer.new(small_businesses)
    end
end
