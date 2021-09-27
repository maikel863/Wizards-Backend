class HousesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with :render_no_response

    def index
        houses = House.all
        render json: houses
    end

    def create
        house = House.create!(house_params)
        render json: house, status: :created
    end

    def show
        house = find_house
        render json: breed, include: :teachers, serializer: HouseTeacherSerializer
    end

    private

    def house_params
        params.permit(:name)
    end

    def render_no_response
        render json: {error: "house not found"}, status: :not_found
    end

    def find_house
        House.find(params[:id])
    end
end