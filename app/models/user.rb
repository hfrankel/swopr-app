class User < ApplicationRecord
  has_many :projects
  has_many :project_collaborators
  has_many :projects, through: :project_collaborators
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, length: { maximum: 150 }, uniqueness: true
  validates :given_names, presence: true
  validates :last_name, presence: true
end
