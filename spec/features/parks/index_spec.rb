require "rails_helper"

RSpec.describe "Parks#index" do
  it "Shows the parks for a state" do
    visit root_path

    select "Utah", from: 'state'
    click_button("Find Parks")

    expect(current_path).to eq(parks_path)

    expect(page).to have_content("Arches National Park")
    expect(page).to have_content("Overview:")
    expect(page).to have_content("Directions:")
    expect(page).to have_content("Hours:")
    expect(page).to have_content("Monday:")
    expect(page).to have_content("Tuesday:")
    expect(page).to have_content("Wednesday:")
    expect(page).to have_content("Thursday:")
    expect(page).to have_content("Friday:")
    expect(page).to have_content("Saturday:")
    expect(page).to have_content("Sunday:")

  end
end