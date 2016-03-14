class V1::TeachersController < ApplicationController
  def create
    @teacher = Teacher.new teacher_params
    if @teacher.save!
      render json: @teacher
    else
      render json: { error: @teacher.errors }, status: 422
    end
  end

  def show
    @teacher = Teacher.find params[:id]
    if @teacher.present?
      render json: @teacher
    else
      render json: { error: "No teacher with id: #{params[:id]}" }, status: 422
    end
  end

  private

    def teacher_params
      params.require(:teacher)
            .permit(:name, :school_identifier)
    end
end