class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, length: { maximum: 150,
    too_long: '%{count} characters is the maximum allowed' }, uniqueness: true
  validates :given_names, presence: true
  validates :last_name, presence: true
end
