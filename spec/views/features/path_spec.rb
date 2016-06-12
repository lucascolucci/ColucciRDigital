require 'rails_helper'

describe 'retains_path' do
  before do
    visit main_home_path
    visit main_contact_path
    fill_in "email", :with => "a@gmail.com"
    click_button "submit"
    puts page.body
  end
  it 'displays user path correctly', :js => true do
    page.should have_content "home -> contact -> profile"
  end
  it 'displays user email on top correctly', :js => true do
    page.should have_link "a@gmail.com"
  end
end