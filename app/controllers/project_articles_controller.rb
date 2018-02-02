class ProjectArticlesController < ApplicationController
  def index
    project_articles = ProjectArticle.all
    render json: project_articles.select_attributes
  end
end
