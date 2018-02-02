class ProjectsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def index
    projects = Project.all

    render json: projects.select_attribute
  end

  def create
    project = Project.create!(project_params)
    render json: project.select_attribute
  end

  def update
    project = Project.find(params[:id])
    project.update_attributes!(project_params)

    render json: project.select_attribute
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :url, :icon_url)
  end
end
