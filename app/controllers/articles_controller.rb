class ArticlesController < ApplicationController
  def index
    @articles = Article.order("created_at DESC").limit(3)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to @article, notice: 'Article was successfully created.'
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])
    redirect_to @article, notice: 'Article was successfully updated.'
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path
  end
end
