class EventsController < ApplicationController
  respond_to :html, :json
  def index
   @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end

  def destroy
    @event = Event.find event_params[:id]
    @event.destroy
  end

  def edit
    @event = Event.find event_params[:id]
  end

  def new
    @event = Event.new
  end

  def update
    @event = Event.find params[:id]
    if @event.update_attributes(event_params)
      redirect_to :action => 'show', :id => @event.id
    end
  end

  def event_params
    params.require(:event).permit(:name, :id)
  end
end
