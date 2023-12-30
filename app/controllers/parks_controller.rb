class ParksController < ApplicationController
  def index
    @parks = ParkFacade.state_parks(params[:state])
  end
end