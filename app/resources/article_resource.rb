class ArticleResource < JSONAPI::Resource
  attributes :name, :available

  has_many :lends
end
