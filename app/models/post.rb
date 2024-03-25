class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 20, maximum: 200 }

end
