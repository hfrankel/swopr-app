class Project < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 150,
    too_long: '%{count} characters is the maximum allowed' }, uniqueness: true
  validates :description, presence: true
end
