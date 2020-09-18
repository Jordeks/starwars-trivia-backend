class PlanetsController < ApplicationController

    def index
        planets = Planet.all 
        render json: PlanetSerializer.new(planets).to_serialized_json 
    end 

    def create
        planet = Planet.new(planet_params)
        if planet.save
            render json: PlanetSerializer.new(planet).to_serialized_json 
        else
            render json: {message: "Could not save planet"}
        end
    end

    private

    def planet_params
        params.permit(:name, :climate, :planet_image, :env_image, :population)
    end
end
