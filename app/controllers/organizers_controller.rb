class OrganizersController < ApplicationController
  def index
    @organizers = Organizer.all

    render("organizers/index.html.erb")
  end

  def show
    @organizer = Organizer.find(params[:id])

    render("organizers/show.html.erb")
  end

  def new
    @organizer = Organizer.new

    render("organizers/new.html.erb")
  end

  def create
    @organizer = Organizer.new

    @organizer.name = params[:name]
    @organizer.url = params[:url]

    save_status = @organizer.save

    if save_status == true
      redirect_to("/organizers/#{@organizer.id}", :notice => "Organizer created successfully.")
    else
      render("organizers/new.html.erb")
    end
  end

  def edit
    @organizer = Organizer.find(params[:id])

    render("organizers/edit.html.erb")
  end

  def update
    @organizer = Organizer.find(params[:id])

    @organizer.name = params[:name]
    @organizer.url = params[:url]

    save_status = @organizer.save

    if save_status == true
      redirect_to("/organizers/#{@organizer.id}", :notice => "Organizer updated successfully.")
    else
      render("organizers/edit.html.erb")
    end
  end

  def destroy
    @organizer = Organizer.find(params[:id])

    @organizer.destroy

    if URI(request.referer).path == "/organizers/#{@organizer.id}"
      redirect_to("/", :notice => "Organizer deleted.")
    else
      redirect_to(:back, :notice => "Organizer deleted.")
    end
  end
end
