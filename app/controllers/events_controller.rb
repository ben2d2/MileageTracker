class EventsController < ApplicationController
  
  before_filter :lookup_event

  def index
  	@events = Event.all
  end
  
  def create
		if @event.save
      flash[:notice] = "Your event was recorded successfully!"
      redirect_to :root
    else
      flash[:error] = "Your event couldn't be saved. #{@event.errors.full_messages.join}"
      render :new
    end
  end


protected

  def lookup_event
    if params[:id]
      @event = Event.find(params[:id])
    else
      @event = Event.new(params[:event])
    end
  end
end
