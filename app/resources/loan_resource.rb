class LoanResource < JSONAPI::Resource
  attributes :notes, :returned

  has_one :article
  has_one :friend
end
