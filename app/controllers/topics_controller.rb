class TopicsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @message = Message.new
  end

  def new
    @topic = Topic.new
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(params[:topic])
    @topic.save
    redirect_to @topic, notice: 'Topic was successfully created.'
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update_attributes(params[:topic])
    redirect_to @topic, notice: 'Topic was successfully updated.'
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_url
  end
end
