class FriendResource < JSONAPI::Resource
  attribute :first_name
  attributes :last_name, :email, :twitter, :created_at

  has_many :loans, acts_as_set: true

  filter :id
  filters :last_name, :email
  filter :first_name, apply: ->(records, value, _options) {
    records.where('friends.first_name LIKE ?', "%#{value.first}%")
  }

  paginator :offset
end
