class Article < ActiveRecord::Base
  validates :name, presence: true
  has_many :loans
end
