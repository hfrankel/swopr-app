require 'rails_helper'

RSpec.describe User, type: :model do
  subject { create(:user) }
  context 'Validations' do
    it { is_expected.to validate_length_of(:password).is_at_least(6) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_length_of(:email).is_at_most(150) }
    it { is_expected.to validate_presence_of(:given_names) }
    it { is_expected.to validate_presence_of(:last_name) }
  end
  context 'Associations' do
    it { is_expected.to have_many(:projects) }
    it { is_expected.to have_many(:projects).through(:project_collaborators) }
  end
end
