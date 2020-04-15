class CommentResource < JSONAPI::Resource
  attributes :content, :post_id
  has_one :post
end

