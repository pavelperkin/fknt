class GroupsController < ApplicationController

  def index
    @groups_1 = Group.where(:course => 1)
    @groups_2 = Group.where(:course => 2)
    @groups_3 = Group.where(:course => 3)
    @groups_4 = Group.where(:course => 4)
    @groups_5 = Group.where(:course => 5)
    @groups_6 = Group.where(:course => 6)
  end

  def show
    @group = Group.find(params[:id])
    @users = User.where(:group_id => @group.id)
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(params[:group])
    @group.save
    @group.schedules.create({:schedule_type_id => 1})
    @group.schedules.create({:schedule_type_id => 2})
    redirect_to @group, notice: 'Group was successfully created.'
  end

  def update
    @group = Group.find(params[:id])
    @group.update_attributes(params[:group])
    redirect_to @group, notice: 'Group was successfully updated.'
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_url
  end
end
