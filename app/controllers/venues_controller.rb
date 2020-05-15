class VenuesController < ApplicationController
  def index 
    @venues = Venue.all
    if params[:type] == "json"
      data = @venues.map do |venue|
        [venue.latitude, venue.longitude]
      end 
      render json: {data: data, center: [data[0][0], data[0][1]]}
    end
  end 

  def show
    @venue = Venue.find(params[:id])
    if params[:type] == "json"
      render json: {data: [@venue.latitude, @venue.longitude], center: [@venue.latitude, @venue.longitude]}
    end
  end

  def search
    location = Geocoder.search(params[:search])[0].data["geometry"]["location"]
    @venues = Venue.all
    data = @venues.map do |venue|
      [venue.latitude, venue.longitude]
    end
    render json: {data: data, center: [location["lat"], location["lng"]]}  
  end 
end
