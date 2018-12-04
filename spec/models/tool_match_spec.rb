require 'rails_helper'

RSpec.describe ToolMatch, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:tools) }

    it { should belong_to(:beans) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
