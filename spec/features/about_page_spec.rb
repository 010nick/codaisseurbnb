require "rails_helper"

describe "the about page" do
  it "opens the about page and shows information about the application" do
    visit "/"

    click_on "About"

    expect(page).to have_content "This application was built in 2017"
  end
end
