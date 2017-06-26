 class SightingsController < ApplicationController
   def index
     @sightings = Sighting.all
     render :index
   end

   def new
     @animal = Animal.find(params[:animal_id])
     @sighting = @animal.sighting.new
   end

   def create
     @animal = Animal.find(params[:animal_id])
     @sighting = @animal.sighting.new(sighting_params)
     if @sighting.save
       redirect_to animal_path(@sighting.animal)
     else
       render :new
     end

private
  def sighting_params
    params.require(:sighting).permit(:date, :lat, :lng, :region)
  end

 end
