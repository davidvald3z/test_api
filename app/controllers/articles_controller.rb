class ArticlesController < ApplicationController
  before_action :set_article, only: %i[update destroy show]

  def index
    articles = Article.all
    render json: articles, status: 200
  end

  def update
    if @article.update(article_params)
      render json: @article, status: 200
    else
      render json: {error: "Error updating article"}
    end
  end

  def destroy
    if @article.destroy
      render json: {message: "Article deleted!"}, status: 200
    else
      render json: {error: "Error deleting article"}
    end
  end

  def create
    article = Article.new(article_params)
    if article.save
      render json: article, status: 200
    else
      render json: {error: "Error creating article"}
    end
  end

  def show
    if @article
      render json: @article, status: 200
    else
      render json: {error: "Article not found"}
    end
  end

  private

  def set_article
    @article = Article.find_by(id: params[:id])
  end

  def article_params
    params.permit(:name, :description)
  end
end
