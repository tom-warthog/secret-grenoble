class User < ApplicationRecord
  has_secure_password
  # validates :email, presence: true
  # validates :email, uniqueness: true
  # TODO: Fix validation issue
end
