require 'rails_helper'

RSpec.describe Machine, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:beans) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
