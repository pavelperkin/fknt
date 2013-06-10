class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @message = Message.new(params[:message])
    @message.save
    redirect_to Topic.find(@message.topic_id), notice: 'Message was successfully created.'
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy if current_user.id == @message.user.id
    redirect_to messages_url
  end
end
