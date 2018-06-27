class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update]

  def index
    if params[:issue_id]
      @events = Issue.find_by(number: params[:issue_id]).events
    else
      @events = Event.all
    end

    render json: @events
  end

  def show
    render json: @event
  end

  def create
    event_service = Events::Create.new(params)
    event_service.call
    if event_service.success?
      render json: event_service.result, status: :created, location: @event
    else
      render json: {errors: event_service.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:action, :issue_id)
    end
end
