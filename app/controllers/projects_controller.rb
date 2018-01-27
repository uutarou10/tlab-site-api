class ProjectsController < ApplicationController
  def index
    projects = Project.all.select(
      :id,
      :title,
      :description,
      :url,
      :icon_url
    )

    render json: projects
  end
end
