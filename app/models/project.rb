class Project < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 150 }, uniqueness: true
  validates :description, presence: true
end
