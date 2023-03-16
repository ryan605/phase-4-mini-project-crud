class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    def create
      spices = Spice.create(spices_params)
      render json: spices, status: :created
    end

    private

    def spices_params
        params.permit(:title,:image,:description,:notes,:rating)
    end

end
