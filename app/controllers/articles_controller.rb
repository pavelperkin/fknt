class ArticlesController < ApplicationController
  before_filter :authenticate_user!
  
  before_filter :admin_only, :except => [:show, :index]

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
    @article = Article.create(params[:article])
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

  protected

  def admin_only
    redirect_to root_path if !(current_user && current_user.admin)
  end
end
