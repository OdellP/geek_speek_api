class User < ApplicationRecord
  has_many :speeks

  validates :first_name, :last_name, :email, :username, presence: true
  validates :first_name, :last_name, length: { minimum: 2, maximum: 50, too_short: "Please add more than 1 character" }
  validates :username, length: { minimum: 2, maximum: 25, too_short: "Please add more than 1 character" }
  validates :email, presence: true, uniqueness: true, length: { maximum: 80 }
end
