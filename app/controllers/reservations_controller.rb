class ReservationsController < ApplicationController


  def create_reservation
       #Render reservation-form-template\
       render(:template =>'/reservation-form-template')
  end




  def Postcreate_reservation(timeslot)
    # params.require(:timeslot_id)
    @timeslot = Timeslot.find_by_id!(params.require(:timeslot_id))
    # Timeslot.where(id: params.require(:timeslot_id)).first   this does the same thing
    @timeslot=timeslot
    if @timeslot.blank?
      #create timeslot
      #@timeslot=new(timeslot)
    end
    @reserve = Reservation.new({user: current_user,timeslot: @timeslot})
		Redirect_to :timeslot
	end

  def remove_reservation
     @reserve = Reservation.find_by_id params[:reservation_id]
     @reserve.delete! if authorize reserve
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