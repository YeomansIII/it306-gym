class ResetReservationCounters < ActiveRecord::Migration
  def change
    Timeslot.all.each do |t|
      Timeslot.reset_counters t.id, :reservations
    end
  end
end
