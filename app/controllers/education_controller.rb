class EducationController < ApplicationController
  def index
    educations = Education.all
    render json: educations
  end

  def show
    education = Education.find_by(id: params[:id])
    render json: education
  end

  def create
    education = Education.new(
      student_id: current_user.id,
      start_date: params[:state_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university: params[:university],
      details: params[:details],
    )
    if education.save
      render json: { message: "Education created successfully" }, status: :created
    else
      render json: { errors: education.errors.full_messages }, status: :bad_request
    end
  end
end
