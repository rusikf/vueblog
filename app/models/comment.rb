class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true

  scope :ordered, -> { order(created_at: :desc) }
end
