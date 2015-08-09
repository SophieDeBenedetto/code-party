# require "rails_helper"

# RSpec.feature "sign in process", :type => :feature do
  
#   let(:user) { User.create(name: "ME!", email: "me@email.com", password: "icecream", password_confirmation: "icecream") }

#   it "signs me in", js: true do
#     visit login_path
#     fill_in 'Email', :with => "#{user.email}"
#     fill_in 'Password', :with => "#{user.password}"
#     # save_and_open_page
#     click_on 'Log in'
#     save_and_open_page
#     # binding.pry
    
#     expect(page).to have_content 'welcome.html.erb'
#   end
# end