require 'rails_helper'

RSpec.describe Lab, type: :model do
  it "has a valid factory" do 
    # binding.pry
    expect(FactoryGirl.build(:lab)).to be_valid
  end

  context "validations" do 
    it "is invalid without a name" do 
      lab = FactoryGirl.build(:lab, name: nil)
      expect(lab).to_not be_valid
    end
  end

  context "associations" do 
    before(:each) do
      @lab = FactoryGirl.build(:lab)
      @snippet = FactoryGirl.build(:snippet) 
      @lab.snippets << @snippet
      @lab.save
    end
    it "can have many snippets" do 
      expect(@lab.snippets).to include(@snippet)
    end

    it "can have many users" do 
      user = FactoryGirl.build(:user)
      user.snippets << @snippet 
      user.save
      expect(@lab.users).to include(user)

    end
  end
end
