class FriendResource < JSONAPI::Resource
  attribute :first_name
  attributes :last_name, :email, :twitter

  has_many :lends, acts_as_set: true
end
