require "rails_helper"
# https://www.relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec

RSpec.feature "Pins" do

  scenario "Check if landing page is accessible" do
    visit pins_path

    expect(page).to have_text "Workout Pinterest"
  end

  scenario "Add new pin" do
    user = create(:user)

    visit new_pin_path

    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log in"

    pin = create(:pin)

    fill_in 'Name',        :with => pin.name
    fill_in "Description", :with => pin.description
    click_button "Create"

    expect(page).to have_text "Pin was successfully created."
  end

  scenario "Edit existing pin" do
    user = create(:user)
    pin  = create(:pin)

    visit new_user_session_path

    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log in"

    visit edit_pin_path(pin)

    fill_in 'pin_name',        :with => pin.name + ' edit'
    fill_in "pin_description", :with => pin.description + ' edit'
    click_button "Update"

    expect(page).to have_text "Pin was successfully edited."
    expect(page).to have_text pin.name + ' edit'
    expect(page).to have_text pin.description + ' edit'
  end

  scenario "Delete existing pin" do
    user = create(:user)

    visit new_pin_path

    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log in"

    pin = create(:pin)

    fill_in 'Name',        :with => pin.name
    fill_in "Description", :with => pin.description
    click_button "Create"

    expect(page).to have_text "Pin was successfully created."

    click_link 'Delete'
    expect(page).to have_text "Pin was deleted."
  end

  scenario "Check for validation rules" do
    visit new_pin_path

    user = create(:user)

    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log in"

    pin = create(:pin)

    fill_in 'pin_name',        :with => ''
    fill_in "pin_description", :with => ''
    click_button "Create"

    expect(page).to have_text "can't be blank"
  end
end