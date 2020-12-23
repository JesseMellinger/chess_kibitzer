require 'rails_helper'

describe 'as a user' do 
  describe 'when I visit the welcome page', :vcr do 
    it 'I see a message welcoming the user, another message describing how to use the application, and a field to input the user\'s chess username' do 
      visit '/'
      
      expect(page).to have_content('Chess.com Leaders')     
  
      expect(page).to have_selector('results', count: 11)

      within(first('.results')) do 
        expect(page).to have_css('.section')
        expect(page).to have_css('.username')
        expect(page).to have_css('.title')
        expect(page).to have_css('.score')
      end
    end
  end
end
