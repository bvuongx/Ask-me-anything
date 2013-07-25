require 'spec_helper'

  feature "Creating Users" do
    before do
    Factory(:question, :inquiry => "Internet Explorer")
    visit '/'
    click_link "Internet Explorer"
    click_link "New User"
  end

  scenario "Creating a user" do
    fill_in "Title", :with => "Non-standards compliance"
    fill_in "Answer", :with => "My pages are ugly!"
    click_button "Create User"
    page.should have_content("User has been created.")
  end

  scenario "Creating a user without valid attributes fails" do
    click_button "Create User"
    page.should have_content("User has not been created.")
    page.should have_content("Inquiry can't be blank")
    page.should have_content("Answer can't be blank")
  end

  scenario "Answer must be longer than 10 characters" do
    fill_in "Inquiry", :with => "Non-standards compliance"
    fill_in "Answer", :with => "it sucks"
    click_button "Create User"
    page.should have_content("User has not been created.")
    page.should have_content("Answer is too short")
  end







end
