require 'rails_helper'

RSpec.describe Tool, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:tool_matches) }

    end

    describe "InDirect Associations" do

    it { should have_many(:beans) }

    end

    describe "Validations" do
      
    end
end
