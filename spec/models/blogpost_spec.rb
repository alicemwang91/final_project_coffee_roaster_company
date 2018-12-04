require 'rails_helper'

RSpec.describe Blogpost, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:comments) }

    it { should have_many(:bookmarks) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_many(:bookmarked_users) }

    end

    describe "Validations" do
      
    end
end
