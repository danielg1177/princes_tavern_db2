class EventsController < ApplicationController
  def index
    @events = Event.all
    render json: {
      events: @events
    }
  end

  def create
    event = Event.create!(
      title: params['event']['title'],
      description: params['event']['description'],
      date: Date.parse(params['event']['date']),
      start_time: params['event']['start_time'],
      end_time: params['event']['end_time'],
      public: params['event']['pub'] == "true",
      url: params['event']['url']
    )

    if event
      render json: {
        status: :created,
        event: event
      }
    else
      render json: {
        status: 500
      }
    end
  end

  def destroy
    event = Event.find(params['id'])
    event.destroy
    if event
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
