class Post < ApplicationRecord
  scope :ordered, -> { order(created_at: :desc) }
  has_many :comments, dependent: :destroy
end

