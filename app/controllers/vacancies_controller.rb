class VacanciesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @vacancies = Vacancy.all
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def new
    @vacancy = Vacancy.new
  end

  def edit
    @vacancy = Vacancy.find(params[:id])
  end

  def create
    @vacancy = Vacancy.new(params[:vacancy])
    @vacancy.save
    redirect_to @vacancy, notice: 'Vacancy was successfully created.'
  end

  def update
    @vacancy = Vacancy.find(params[:id])
    @vacancy.update_attributes(params[:vacancy])
    redirect_to @vacancy, notice: 'Vacancy was successfully updated.'
  end

  def destroy
    @vacancy = Vacancy.find(params[:id])
    @vacancy.destroy
    redirect_to vacancies_url
  end
end
