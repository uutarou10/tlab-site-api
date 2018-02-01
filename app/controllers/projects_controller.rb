class ProjectsController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def index
    projects = Project.all.select(
      :id,
      :title,
      :description,
      :url,
      :icon_url,
    )

    render json: projects
  end

  def create
    project = Project.create!(project_params)
    render json: project
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :url, :icon_url)
  end
end
