require "rails_helper"

RSpec.describe "Welcome#Index" do
  it "Has a page with a dropdown" do
    visit root_path

    expect(page).to have_link("Park Search") 
    expect(page).to have_button("Find Parks")

    select "Tennessee", from: 'state'
    click_button("Find Parks")

    expect(current_path).to eq(parks_path)
  end
end