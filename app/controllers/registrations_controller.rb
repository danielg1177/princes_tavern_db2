class RegistrationsController < ApplicationController
  def create
    user = User.new(
      email: params['user']['email'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
    )
    user.admin = false

    if user.save
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: {
        status: 500
      }
    end
  end

  def update
    user = User.find_by(email: params['user']['email'])
    user.password = params['user']['password']
    user.password_confirmation = params['user']['password_confirmation']
    if user.save
      render json: {
        status: :updated
      }
    else
      render json: {
        status: 500
      }
    end
  end
end
