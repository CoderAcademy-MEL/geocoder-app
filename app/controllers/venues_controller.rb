class VenuesController < ApplicationController
  def index 
    @venues = Venue.all
    if params[:type] == "json"
      data = @venues.map do |venue|
        [venue.latitude, venue.longitude]
      end 
      render json: {data: data}
    end
  end 

  def show
    @venue = Venue.find(params[:id])
    if params[:type] == "json"
      render json: {data: [@venue.latitude, @venue.longitude]}
    end
  end
end
