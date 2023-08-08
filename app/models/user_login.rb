class UserLogin < ApplicationRecord
  belongs_to :user
  belongs_to :login
end
