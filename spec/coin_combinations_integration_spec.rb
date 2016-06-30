require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin collection path', {:type => :feature}) do
  it('should gather user input and direct to a page with coin string') do
    visit('/')
    fill_in('money', :with => '99')
    click_button('Calculate')
    expect(page).to have_content('3 quarters 2 dimes 4 pennies')
  end
end
