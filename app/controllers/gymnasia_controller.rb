class GymnasiaController < ApplicationController
  def new
  end

  def show
    gyms = Gymnasium.all
    timeslots = Timeslot.all
    render :show, :locals => {user: current_user, timeslots: timeslots, gyms: gyms}
  end

end
