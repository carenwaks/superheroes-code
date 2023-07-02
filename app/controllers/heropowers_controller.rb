class HeropowersController < ApplicationController
    def index
        heropowers = Heropower.all
        render json: heropowers
    end

    def create
        heropower = Heropower.create(heropower_params)
        if heropower.save
            render json: heropower, status: :created
        else
            render json: { "errors": ["validation errors"] }, status: :unprocessible
        end
    end

    private

    def heropower_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
