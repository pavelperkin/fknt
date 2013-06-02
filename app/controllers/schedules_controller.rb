class SchedulesController < ApplicationController
  
  respond_to :html, :js

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    @schedule.update_attributes(params[:schedule])
    redirect_to @schedule.group, notice: 'Schedule was successfully updated.'
  end
end
