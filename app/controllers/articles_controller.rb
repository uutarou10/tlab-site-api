class ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles
  end

  def show
    article = Article.find(params[:id])
    render json: article
  end

  def create
    article = Article.new(article_params)
    article.user = current_user
    article.save!

    render json: article
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
