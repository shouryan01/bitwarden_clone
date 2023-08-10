class Login < ApplicationRecord
  has_many :user_logins
  has_many :users, through: :user_logins

  encrypts :username, deterministic: true
  encrypts :password
end
