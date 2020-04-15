class PostResource < JSONAPI::Resource
  attributes :title, :content, :published, :created_at
  has_many :comments, always_include_linkage_data: true

  def self.default_sort
    [{ field: 'created_at', direction: :desc }]
  end
end

