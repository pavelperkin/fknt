class UploadsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.where(:teacher => true) 
  end

  def new
    @upload = current_user.uploads.build
  end  

  def create
    @upload = Upload.new(params[:upload])
    if @upload.save
      redirect_to new_upload_path, notice: 'Upload was successfully created.'
    else
      render action: "new"
    end      
  end
  
  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    redirect_to uploads_url
  end
end
