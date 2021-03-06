require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    it { should have_many(:blogposts) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    it { should have_many(:bookmarked_blogposts) }

    end

    describe "Validations" do
      
    end
end
