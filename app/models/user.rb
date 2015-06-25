class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true 
  validates :password, :password_confirmation, presence: true
  has_secure_password

  has_many :skeletons
end
