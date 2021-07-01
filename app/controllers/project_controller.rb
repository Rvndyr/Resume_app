class ProjectController < ApplicationController
  def index
    projects = Project.all
    render json: projects
  end

  def show
    projects = Project.find_by(id: params[:id])
    render json: projects
  end

  def create
    project = Project.new(
      student_id: params[:student_id],
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
    )
    if project.save
      render json: { message: "Project created successfully" }, status: :created
    else
      render json: { errors: project.errors.full_messages }, status: :bad_request
    end
  end

  def update
    project = Project.find_by(id: params[:id])
    project.name = params[:name] || project.name
    project.student_id = params[:student_id] || project.student_id
    project.description = params[:description] || project.description
    project.url = params[:url] || project.url
    project.screenshot = params[:screenshot] || project.screenshot
    project.save
    render json: project
  end

  def destroy
    projects = Project.find_by(id: params[:id])
    render json: { status: "removed." }
  end
end
