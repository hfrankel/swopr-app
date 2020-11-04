require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  
  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it "is not valid without an email" do
    user.email = nil
    expect(user).to_not be_valid
  end

  it "is not valid with a 150+ char email" do
    user.email = 'e' * 151
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a given name" do
    user.given_names = nil
    expect(user).to_not be_valid
  end

  it "is not valid without a last name" do
    user.last_name = nil
    expect(user).to_not be_valid
  end
end
