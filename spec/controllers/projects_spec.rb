require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  context 'Params' do
    it do
      is_expected.to permit(:title, :description, :user_id)
        .for(:create)
        .on(:project)
    end

    it { is_expected.to use_before_action(:project_params) }
  end
end
