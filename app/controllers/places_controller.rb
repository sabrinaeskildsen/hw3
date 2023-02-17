class PlacesController < ApplicationController


  def index
    @places = Place.all
  end

  def show
    @places = Place.find_by({"id" => params["id"] })
  end

  def new
    @places = Place.new
  end

  def create
    @places = Place.new
    @places["location"]=params["place"]["location"]
    @places.save
    redirect_to"/places"
  end


end
