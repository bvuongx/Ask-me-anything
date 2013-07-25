require 'spec_helper'

feature 'Creating Questions' do

    before do
      visit '/'
      click_link 'New Question'
    end

    scenario "can create a question" do
      fill_in 'Inquiry', :with => 'TextMate 2'
      click_button 'Create Question'
      page.should have_content('Question has been created.')

      question = Question.find_by_inquiry("TextMate 2")
      page.current_url.should == question_url(question)
      title = "TextMate 2 - Questions - Ask Me Anything"
  #   find("title").should have_content(title)
    end

    scenario "can not create a question without a inquiry" do
      click_button 'Create Question'
      page.should have_content("Question has not been created.")
      page.should have_content("Inquiry can't be blank")
    end

end
