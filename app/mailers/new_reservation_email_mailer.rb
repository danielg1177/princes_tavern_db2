
class NewReservationEmailMailer < ApplicationMailer
  def notify(user, reservation)
    @reservation = reservation
    @user = user
    mail( to: @user.email, subject: "Reservation information" )
  end

  def update(user, reservation)
    @reservation = reservation
    @user = user
    mail( to: @user.email, subject: "Reservation update" )
  end
end
