class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create]  
  before_filter :can_edit_only_his_profile, :only => [:edit, :update]
  before_filter :admin_only, :only => :index

  respond_to :html, :js

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url, notice: 'User was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
    end
  end

  protected

  def can_edit_only_his_profile
    redirect_to root_path if current_user.id != params[:id].to_i
  end

  def admin_only
    redirect_to root_path if !current_user.admin
  end
end
