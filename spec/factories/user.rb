FactoryGirl.define do
  factory :user do
    name "Sophie"
    location "NY, NY"
    bio "I was born and raised on the bottom of the ocean, in the Mariana Trench. I love cooking, yoga and deep sea diving. I learned to program at the Flatiron School and since then I have put my new skills to use as an astronaut."
    email "sophie@test.com"
    password "password"
    password_confirmation "password"
    created_at Date.today
    updated_at Date.today
  end
end