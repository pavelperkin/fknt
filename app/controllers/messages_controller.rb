class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(params[:message])
    @message.save
    redirect_to @message, notice: 'Message was successfully created.'
  end

  def update
    @message = Message.find(params[:id])
    @message.update_attributes(params[:message])
    redirect_to @message, notice: 'Message was successfully updated.'
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_url
  end
end
