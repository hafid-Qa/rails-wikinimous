# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :set_article, only: %w[show edit update]
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
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Edit an article
  def edit; end

  def update
    @article.update(article_params)
    redirect_to root_path(@article)
  end
  # Edit an article

  # def destroy
  #    = .find(params[:id])
  # end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
