require 'rails_helper'

RSpec.describe Snippet, type: :model do

  it "should have a factory" do 
    expect(FactoryGirl.build(:snippet)).to be_valid
  end

  context "validations" do 
    it "is invalid without content" do 
      expect(FactoryGirl.build(:snippet, content: nil)).to_not be_valid
    end
  end

  context "associations" do 
    it "can belong to a user" do 
      user = FactoryGirl.build(:user)
      snippet = FactoryGirl.build(:snippet)
      user.snippets << snippet

      expect(snippet.user).to eq(user)
    end

    it "can belong to a lab" do 
      snippet = FactoryGirl.build(:snippet)
      lab = Lab.create(name: "Test Lab")
      lab.snippets << snippet
      expect(snippet.lab).to eq(lab)
    end
  end
end
