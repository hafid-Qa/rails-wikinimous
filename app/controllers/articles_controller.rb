# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :set_article, only: %w[show create]
  # read all
  def index
    @articles = Article.all
  end

  # read one
  def show; end

  # create
  def new
    @article = Article.new
  end

  def create
    @articll = Article.new(article_params)
  end

  # def update
  #   @ = .find(params[:id])
  # end

  # def edit
  #   @ = .find(params[:id])
  # end

  # def destroy
  #    = .find(params[:id])
  # end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def task_params
    params.require(:article).permit(:title, :content)
  end
end
