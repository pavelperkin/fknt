class UploadsController < ApplicationController
  before_filter :authenticate_user!, :except => :index

  def index
    @users = User.where(:teacher => true) 
  end

  def new
    @upload = current_user.uploads.build
  end  

  def create
    @upload = Upload.new(params[:upload])
    @upload.save
    redirect_to @upload, notice: 'Upload was successfully created.'    
  end
  
  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to uploads_url
  end
end
