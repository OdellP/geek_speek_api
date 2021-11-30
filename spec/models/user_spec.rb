require 'rails_helper'
#
RSpec.describe User, type: :model do
  describe "Creating a valid user" do
    let(:user) do
      User.create!(
        first_name: "Odell",
        last_name: "Test",
        email: "testing@example.com",
        username: "testusername",
      )
    end

    it "saves a valid user" do
      expect(user).to be_persisted
    end
  end

  describe "associations" do
    it { is_expected.to have_many :speeks }
  end

  describe "length validations" do
    it { is_expected.to validate_length_of(:email).is_at_most(80) }
    it { is_expected.to validate_length_of(:first_name).is_at_least(2).with_message("Please add more than 1 character") }
    it { is_expected.to validate_length_of(:first_name).is_at_most(50) }
    it { is_expected.to validate_length_of(:last_name).is_at_least(2).with_message("Please add more than 1 character") }
    it { is_expected.to validate_length_of(:last_name).is_at_most(50) }
    it { is_expected.to validate_length_of(:username).is_at_least(2).with_message("Please add more than 1 character") }
    it { is_expected.to validate_length_of(:username).is_at_most(25) }
  end

  describe "presence validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:username) }
  end
end
