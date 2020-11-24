require 'rails_helper'

RSpec.describe ProjectCollaborator, type: :model do
  subject { build(:project_collaborator) }
  context 'Associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:project) }
  end
end
