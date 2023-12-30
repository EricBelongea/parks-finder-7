class ParkFacade
  def self.state_parks(state)
    json_response = ParkService.state_parks
    parks_in_state  = json_response[:data].select { |park| park[:states] == "#{state}" }

    parks_in_state.map do |park|
      Park.new(park)
    end
  end
end