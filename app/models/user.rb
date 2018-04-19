class User < ApplicationRecord
  has_one :list, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :password, length: {minimum: 6}, presence: true
  has_secure_password
end
