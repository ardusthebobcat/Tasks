require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the task path', {:type => :feature}) do
  it('allows the user to enter in multiple tasks and save them') do
    visit('/')
    fill_in('description', :with => "buy cat food")
    click_button('save task')
    expect(page).to have_content('your task has been saved')
  end
end
