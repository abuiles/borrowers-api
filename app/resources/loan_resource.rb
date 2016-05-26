class LoanResource < JSONAPI::Resource
  attributes :notes, :returned, :created_at

  has_one :article
  has_one :friend
end
