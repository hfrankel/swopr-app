require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(
      email: 'test@test123.com',
      password: '123456',
      given_names: 'Joe James',
      last_name: 'Bloggs',
    )
  }
  
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a 150+ char email" do
    subject.email = 'e' * 151
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a given name" do
    subject.given_names = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
end
