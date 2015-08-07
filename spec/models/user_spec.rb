require 'rails_helper'

RSpec.describe User, type: :model do
  it "should have a factory" do 
    expect(FactoryGirl.build(:user)).to be_valid
  end

  context "validations" do 
    it "is invalid without a name" do 
      expect(FactoryGirl.build(:user, name: nil)).to_not be_valid
    end
    it "is invalid without an email" do 
      expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
    end
    it "is invalid without a password" do 
      expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
    end

    it "is invalid without a password confirmation" do 
      expect(FactoryGirl.build(:user, password: nil)).to_not be_valid
    end

    it "is invalid without a password confirmation that matches password" do 
      expect(FactoryGirl.build(:user, password_confirmation: "puppies")).to_not be_valid
    end
  end

  context "associations" do
    it "can have many snippets" do 
      user = FactoryGirl.build(:user)
      snippet = FactoryGirl.build(:snippet)
      other_snippet = FactoryGirl.build(:snippet, content: "hey")
      user.snippets << snippet
      user.snippets << other_snippet
      user.save!

      expect(user.snippets).to include(snippet)
      expect(user.snippets).to include(other_snippet)
    end 
  end
end


