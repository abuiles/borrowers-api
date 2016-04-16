class ArticleResource < JSONAPI::Resource
  attributes :name, :available

  has_many :loans
end
