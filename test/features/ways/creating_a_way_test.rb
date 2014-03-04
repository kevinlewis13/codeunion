require "test_helper"

feature "Creating a way" do
  scenario "a way can be created" do
    visit new_way_path
    fill_in "Name", with: ways(:mooc).name
    # select("ruby", :from => "way_Language:")
    # select("mooc", :from => "Category")
    click_on "Create Way"
    page.text.must_include "Way was successfully created"
    page.text.must_include ways(:mooc).name
  end
end

