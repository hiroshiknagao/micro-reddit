class User < ApplicationRecord
  has_many :posts
  has_many :comments
  
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 4 }
end
