class Login < ApplicationRecord
  has_many :user_logins
  has_many :users, through: :user_logins
end
