require 'spec_helper'

feature 'Creating Questions' do

  scenario "can create a question" do
    visit '/'
    click_link 'New Question'
    fill_in 'Name', :with => 'TextMate 2'
    fill_in 'Description', :with => "A text-editor for OS X"
    click_button 'Create Question'
    page.should have_content('Question has been created.')
    question = Question.find_by_name("TextMate 2")
    page.current_url.should == question_url(question)
    title = "TextMate 2 - Questions - Ask Me Anything"
 #   find("title").should have_content(title)
  end
end
