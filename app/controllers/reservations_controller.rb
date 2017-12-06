class ReservationsController < ApplicationController

  def create
    # params.require(:timeslot_id)
    if params.has_key? :timeslot_id
      @timeslot = Timeslot.find_by_id!(params.require(:timeslot_id))
    else
      @timeslot = Timeslot.create!({date: DateTime.now, hour: params.require(:hour), gymnasia_id: params.require(:gymnasia_id)})
    end
    @reserve = Reservation.create!({user_id: current_user.id, timeslot_id: @timeslot.id})
    render :successful
  end

  def remove
    @reserve = Reservation.find_by_id params.require(:reservation_id)
    @reserve.delete! if current_user.id == @reserve.user_id
  end

end

/#Class ReservationController
Get create_reservation
Render reservation-form-template
End

Post create_reservation
Create timeslot if doesn't exist
		reserve = Reservation.new current_user, timeslot
		Redirect to timeslot
	End

	Delete remove_reservation
		reserve = Reservation.find_by_id params[:reservation_id]
		reserve.delete! If authorize reserve
	End
End
 #/