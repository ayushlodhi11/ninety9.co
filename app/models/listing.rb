class Listing < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user, :price, :postal_code

  validates :status, :inclusion =>{ :in => %w( active deleted closed ), :message => "status should be active | deleted | closed" }
  validates :listing_type, :inclusion =>{ :in => %w( rent sale ), :message => "status should be rent | sale" }
  after_update :check_update

  def check_update
    if self.price_changed?
      PriceChange.create(:old_price => self.price_was, :new_price => self.price, :listing_id => self.id)
    end
  end

end
