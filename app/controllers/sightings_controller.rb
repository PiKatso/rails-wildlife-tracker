 class SightingsController < ApplicationController
   def index
     @sightings = Sighting.all
     render :index
   end
 end
