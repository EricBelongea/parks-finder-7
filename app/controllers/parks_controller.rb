class ParksController < ApplicationController
  def index
    @parks = ParkFacade.state_parks(params[:state])
    # require 'pry'; binding.pry
  end
end