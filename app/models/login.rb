class Login < ApplicationRecord
  has_many :user_logins, dependent: :destroy
  has_many :users, through: :user_logins

  encrypts :username, deterministic: true
  encrypts :password

  validates :name, presence: true
  validates :username, presence: true
  validates :password, presence: true

  def shareable_users
    User.excluding(users)
  end

  def editable_by?(user)
    user_logins.find_by(user: user)&.editable?
  end

  def shareable_by?(user)
    user_logins.find_by(user: user)&.shareable?
  end

  def deletable_by?(user)
    user_logins.find_by(user: user)&.deletable?
  end
end
