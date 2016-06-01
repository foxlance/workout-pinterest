require "rails_helper"
# https://www.relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec

RSpec.feature "Pins" do

  scenario "Check if landing page is accessible" do
    visit pins_path

    expect(page).to have_text "Pinterest"
  end

  scenario "Add new pin" do
    visit new_pins_path

    pin = create(:pins)

    fill_in "Name",        :with => pin.name
    fill_in "Description", :with => pin.description
    click_button "Create"

    expect(page).to have_text "Widget was successfully created."
  end
end