require 'rails_helper'

RSpec.describe Dish, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:cuisine) }

    it { should belong_to(:venue) }

    it { should belong_to(:user) }

    end

    describe "InDirect Associations" do

    it { should have_one(:bookmark) }

    end

    describe "Validations" do

    end
end
