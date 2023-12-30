require "rails_helper"

RSpec.describe "Park" do
  it "Can be created" do
    attrs = {
      fullName: "Canyonlands National Park",
      description: "Has two parts, Island in the Sky and The Needles District",
      directionsInfo: "Located in and around Moab, UT",
      operatingHours: [{
        exceptions: [],
        description: "Canyonlands National Park is generally open 24 hours a day, year-round. Fees apply. The park is very busy between March and October. To avoid traffic, we recommend entering the park before 8 am or after 3 pm.",
        standardHours: {:wednesday=>"All Day", :monday=>"All Day", :thursday=>"All Day", :sunday=>"All Day", :tuesday=>"All Day", :friday=>"All Day", :saturday=>"All Day"},
        name: "Park Hours"
      }],
      states: "UT"
    }

    canyonlands = Park.new(attrs)

    expect(canyonlands).to be_a(Park)

    expect(canyonlands).to respond_to(:name)
    expect(canyonlands.name).to be_a(String)

    expect(canyonlands).to respond_to(:description)
    expect(canyonlands.description).to be_a(String)

    expect(canyonlands).to respond_to(:directions)
    expect(canyonlands.directions).to be_a(String)

    expect(canyonlands).to respond_to(:hours)
    expect(canyonlands.hours).to be_a(Hash)

    expect(canyonlands).to respond_to(:state)
    expect(canyonlands.state).to be_a(String)
  end
end