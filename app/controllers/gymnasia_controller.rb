class GymnasiaController < ApplicationController
  def new
  end

  def index
    gyms = Gymnasium.all
    render :index, :locals => {user: current_user, gyms: gyms}
  end

  def show
    gym = Gymnasium.find_by_id! params.require(:id)
    timeslots = Timeslot.where(gymnasia_id: params.require(:id))
    render :show, :locals => {user: current_user, timeslots: timeslots, gym: gym}
  end

end
