class StudentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with :render_no_response

    def index
        students = Student.all
        render json: students
    end

    def create
        student = Student.create!(student_params)
        render json: student, status: :created
    end

    def show
        student = find_student
        render json: user, serializer: StudentTeacherSerializer
    end

    def destroy
        student = find_student
        student.destroy
        head :no_content
    end

    private

    def student_params
        params.permit(:name)
    end

    def render_no_response
        render json: {error: "Student not found"}, status: :not_found
    end

    def find_student
        Student.find(params[:id])
    end
end