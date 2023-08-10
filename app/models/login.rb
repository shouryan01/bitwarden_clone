class Login < ApplicationRecord
  has_many :user_logins
  has_many :users, through: :user_logins

  encrypts :username, deterministic: true
  encrypts :password

  validates :name, presence: true
  validates :username, presence: true
  validates :password, presence: true
end
