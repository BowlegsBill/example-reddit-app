class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :votes

  validates :body, presence: true
end