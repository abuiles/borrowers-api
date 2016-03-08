class Article < ActiveRecord::Base
  validates :name, presence: true

  has_many :lends
end
