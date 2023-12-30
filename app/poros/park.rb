class Park
  attr_reader :name, :description, :directions, :hours, :state

  def initialize(data)
    @name = data[:fullName]
    @description = data[:description]
    @directions = data[:directionsInfo]
    @hours = data[:operatingHours].first[:standardHours]
    @state = data[:states]
  end
end