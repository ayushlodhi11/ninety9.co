class Listing < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user, :price, :postal_code

  validates :status, :inclusion =>{ :in => %w( active deleted closed ), :message => "status should be active | deleted | closed" }
  validates :listing_type, :inclusion =>{ :in => %w( rent sale ), :message => "status should be rent | sale" }
end
