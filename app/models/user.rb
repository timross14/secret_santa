class User < ApplicationRecord
  has_one :list
  validates :name, presence: true, uniqueness: true
  validates :password, length: {minimum: 6}, presence: true
  has_secure_password
end
