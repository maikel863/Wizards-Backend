class RatingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with :render_no_response

    def create
        rating = Rating.create!(rating_params)
        render json: rating, status: :created
    end

    def update
        rating = find_rating
        rating.update(rating_params)
        render json: rating
    end

    def index
        users = Rating.all
        render json: users
    end

    private

    def rating_params
        params.permit(:student_id, :teacher_id, :good_bad?)
    end

    def render_no_response
        render json: {error: "Rating not found"}, status: :not_found
    end

    def find_rating
        Rating.find(params[:id])
    end



end