class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :post

  enum direction: {
    up: 1,
    down: 2
  }

  validates(
    :user_id,
    uniqueness: { scope: :post_id }
  )
end
