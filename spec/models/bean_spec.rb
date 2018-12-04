require 'rails_helper'

RSpec.describe Bean, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:tool_matches) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
