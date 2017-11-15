class GymnasiaController < ApplicationController
  def new
  end

  def show
    timeslots = Timeslot.all
    render :show, :locals => {user: current_user, timeslots: timeslots}
  end
end
