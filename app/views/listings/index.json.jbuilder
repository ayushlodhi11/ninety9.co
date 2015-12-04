json.array!(@listings) do |listing|
  json.extract! listing, :id, :price, :postal_code, :listing_type, :user, :status
end
