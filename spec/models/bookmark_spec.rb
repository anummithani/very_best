require "rails_helper"

RSpec.describe Bookmark, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:venue) }
  end

  describe "InDirect Associations" do
    it { should have_one(:dish) }

    it { should have_one(:user) }
  end

  describe "Validations" do
  end
end
