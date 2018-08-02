class User < ApplicationRecord
  has_secure_password
  validates presence: true
  validates uniqueness: true
end
