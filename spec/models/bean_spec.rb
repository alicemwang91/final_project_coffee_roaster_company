require 'rails_helper'

RSpec.describe Bean, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:recommended_machine) }

    it { should have_many(:tool_matches) }

    end

    describe "InDirect Associations" do

    it { should have_many(:tools) }

    end

    describe "Validations" do
      
    end
end
