require('sphinx')
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the sphinx game', {:type => :feature}) do
  it('user guesses what the movie is') do
    visit('/')
    fill_in('ans', :with => 'batman')
    click_button('Next Riddle')
    expect(page).to have_content('You Solved the Riddle')
  end

  # it('user guesses what the movie is') do
  #   visit('/')
  #   fill_in('ans', :with => 'batman')
  #   click_button('Next Riddle')
  #   expect(page).to have_content('This is the failure page')
  # end

end
