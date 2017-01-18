require "rails_helper"

describe "Signing up" do
  it "creates an account for a new user" do
    visit "/"
    click_on "Sign Up"

    fill_in "user_email", with: "mail@jankeesvw.com"
    fill_in "user_password", with: "short"

    click_on "Sign up"

    expect(page).to have_content "Password is too short"

    fill_in "user_password", with: "this-is-more-safe-2017"
    click_on "Sign up"

    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end
