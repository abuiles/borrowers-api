class FriendResource < JSONAPI::Resource
  attribute :first_name
  attributes :last_name, :email, :twitter
end
