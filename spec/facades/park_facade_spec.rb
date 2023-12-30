require "rails_helper"

RSpec.describe "Park Facade" do
  it "Returns data for a state" do
    result = ParkFacade.state_parks("UT")

    expect(result.count).to eq(1)
    expect(result.first).to be_a(Park)

    arches = result.first

    expect(arches).to respond_to(:name)
    expect(arches.name).to be_a(String)

    expect(arches).to respond_to(:description)
    expect(arches.description).to be_a(String)

    expect(arches).to respond_to(:directions)
    expect(arches.directions).to be_a(String)

    expect(arches).to respond_to(:hours)
    expect(arches.hours).to be_a(Hash)

    expect(arches).to respond_to(:state)
    expect(arches.state).to be_a(String)
  end
end