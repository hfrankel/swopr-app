class Project < ApplicationRecord
  belongs_to :user
  has_many :project_collaborators
  has_many :users, through: :project_collaborators
  validates :title, presence: true, length: { maximum: 150 }, uniqueness: true
  validates :description, presence: true
end
