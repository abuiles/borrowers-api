class ArticleResource < JSONAPI::Resource
  attributes :name, :created_at

  has_many :loans
end
