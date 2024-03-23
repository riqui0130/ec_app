class EventsController < ApplicationController
  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      params.require(:event).permit(permit_params)
    end
  end

  private
  def permit_params
    super
  end
end
