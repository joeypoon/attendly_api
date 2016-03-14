class V1::StudentsController < ApplicationController
  def create
    @student = Student.new student_params
    if @student.save!
      render json: @student
    else
      render json: { error: @student.errors }, status: 422
    end
  end

  def show
    @student = Student.find params[:id]
    if @student.present?
      render json: @student
    else
      render json: { error: "No student with id: #{params[:id]}" }, status: 422
    end
  end

  private

    def student_params
      params.require(:student)
            .permit(:name, :email, :school_identifier, :phone_number,
                    :password, :password_confirmation, phone_identifier: [])
    end
end