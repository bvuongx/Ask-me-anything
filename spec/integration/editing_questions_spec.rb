require 'spec_helper'

feature "Editing Questions" do
  before do
    Factory(:question, :inquiry => "TextMate 2")
    visit "/"
    click_link "TextMate 2"
    click_link "Edit Question"
  end

  scenario "Updating a question" do
    fill_in "Inquiry", :with => "TextMate 2 beta"
    click_button "Update Question"
    page.should have_content("Question has been updated.")
  end

  scenario "Updating a question with invalid attributes is bad" do
    fill_in "Inquiry", :with => ""
    click_button "Update Question"
    page.should have_content("Question has not been updated.")
  end
end

