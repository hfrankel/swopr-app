require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { create(:project) }
  context 'Validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(150) }
    it { is_expected.to validate_uniqueness_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end
  context 'Associations' do
    it { is_expected.to belong_to(:user) }
  end
end
