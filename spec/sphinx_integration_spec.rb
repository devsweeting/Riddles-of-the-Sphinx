# require('sphinx')
# require('capybara/rspec')
# require('./app')
#
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('the triangle path', {:type => :feature}) do
#   it('processes the user entry and returns what type of triangle it is') do
#     visit('/input')
#     fill_in('sideA', :with => '1')
#     fill_in('sideB', :with => '1')
#     fill_in('sideC', :with => '2')
#     click_button('Submit')
#     expect(page).to have_content('not a triangle')
#   end
# end
