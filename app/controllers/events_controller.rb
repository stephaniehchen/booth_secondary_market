class EventsController < ApplicationController
  def index
    @events = Event.all
    @post = Post.all
    @like = Like.all
    render("events/index.html.erb")
  end

  def show
    @event = Event.find(params[:id])
    @post = Post.all
    @like = Like.all
    render("events/show.html.erb")
  end

  def new
    @event = Event.new

    render("events/new.html.erb")
  end

  def create
    @event = Event.new

    @event.event_name = params[:event_name]
    @event.event_date = Chronic.parse(params[:event_date])
    @event.location_address = params[:location_address]
    @event.url = params[:url]
    @event.image_url = params[:image_url]
    @event.organizer_id = params[:organizer_id]
    @event.description = params[:description]

    save_status = @event.save

    if save_status == true
      redirect_to("/events/#{@event.id}", :notice => "Event created successfully.")
    else
      render("events/new.html.erb")
    end
  end

  def edit
    @event = Event.find(params[:id])

    render("events/edit.html.erb")
  end

  def update
    @event = Event.find(params[:id])

    @event.event_name = params[:event_name]
    @event.event_date = Chronic.parse(params[:event_date])
    @event.location_address = params[:location_address]
    @event.url = params[:url]
    @event.image_url = params[:image_url]
    @event.organizer_id = params[:organizer_id]
    @event.description = params[:description]

    save_status = @event.save

    if save_status == true
      redirect_to("/events/#{@event.id}", :notice => "Event updated successfully.")
    else
      render("events/edit.html.erb")
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    if URI(request.referer).path == "/events/#{@event.id}"
      redirect_to("/", :notice => "Event deleted.")
    else
      redirect_to(:back, :notice => "Event deleted.")
    end
  end
end
