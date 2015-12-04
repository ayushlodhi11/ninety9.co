class User < ActiveRecord::Base
  has_many :listings, foreign_key: 'user_id'

  validates :name, presence: true
end
