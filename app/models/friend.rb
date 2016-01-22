class Friend < ActiveRecord::Base
  validates :first_name, presence: true
  validates :email,      presence: true
  validates :last_name,  presence: true
end
