class TeachersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_no_response

    def index
        teachers = Teacher.all
        render json: teachers, methods: [:likes, :dislikes]
    end

    def create
        teacher = Teacher.create!(teacher_params)
        render json: teacher, status: :created
    end

    def destroy
        teacher = find_teacher
        teacher.destroy
        head :no_content
    end

    private

    def teacher_params
        params.permit(:name, :house_id)
    end

    def render_no_response
        render json: {error: "Teacher not found"}, status :not_found
    end

    def find_teacher
        Teacher.find(params[:id])
    end
end