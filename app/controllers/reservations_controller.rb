require "pry"

class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.create!(
      user: User.find(params['reservation']['user']),
      date: Date.parse(params['reservation']['date']),
      time: params['reservation']['time'],
      count: params['reservation']['count'],
      phone_number: params['reservation']['phone_number']
    )

    if @reservation
      render json: {
        status: :created,
        reservation: @reservation
      }
      NewReservationEmailMailer.notify(User.find(params['reservation']['user']), @reservation).deliver
    else
      render json: {
        status: 500
      }
    end
  end

  def index
    render json: {
      reservations: Reservation.all
    }
  end

  def update
    reservation = Reservation.find(params['id'].to_i)
    reservation.date = Date.parse(params['reservation']['date'])
    reservation.time = params['reservation']['time']
    reservation.phone_number = params['reservation']['phone_number']
    reservation.count = params['reservation']['count']

    if reservation.save
      render json: {
        status: :updated,
        reservation: reservation
      }
      NewReservationEmailMailer.update(reservation.user, reservation).deliver
    else
      render json: {
        status: 500
      }
    end
  end

  def destroy
    reservation = Reservation.find(params['id'])
    reservation.destroy
    if reservation
      render json: {
        status: 500
      }
    else
      render json: {
        status: :deleted
      }
    end
  end
end
