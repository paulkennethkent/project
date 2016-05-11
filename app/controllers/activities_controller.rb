class ActivitiesController < ApplicationController
respond_to :html

  def index
    @activities = Activity.all
    respond_with(@activities)
  end

  def show
    respond_with(@activities)
  end

  def new

  end

  def edit
  end

  def create
  end

  def update
  end


end
