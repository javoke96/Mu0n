class VenueController < ActionController::Base
# layout 'City'
skip_before_action :verify_authenticity_token, :only => [:index, :show, :create]



  def create
    if request.post?
      prev = City.order("created_at").last.name
      venue = City.create(name: params[:name], status: params[:status], prev: prev)
      redirect_to "/venue/view/" + venue.id.to_s
    end
  end

  def show
    @venue = City.all
  end

  def view
    @venue = City.all
  end

  def delete
    venue = City.find_by(id: params[:id])
    venue.destroy
    redirect_to "venue/show"
  end

  def update
    if request.post?
      venue = City.find_by(id: params[:id])
      venue.update(name: params[:name], status: params[:status])
      redirect_to "venue/view" + venue.id.to_s
    else
       @venue = City.find_by(id: params[:id])
     end
end
end
