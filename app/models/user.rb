class User < ActiveRecord::Base
  validates :username, uniqueness: true, length: { minimum: 3 }
  has_secure_password
  has_many :exercises, dependent: :destroy
end
