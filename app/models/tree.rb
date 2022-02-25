class Tree < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :description, presence: true
  validates :price, presence: true
  validates :species, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :countryname, presence: true
  after_validation :geocode_address, if: [:will_save_change_to_street?, :will_save_change_to_city?, :will_save_change_to_countryname?]
  geocoded_by :geocode_address

  def geocode_address
    full_address = [street, city, countryname].join(", ")

    results = Geocoder.search(full_address)
    lat_long = results.first.coordinates unless results.empty?

    if lat_long && !lat_long.empty?
      self.latitude = lat_long[0]
      self.longitude = lat_long[1]
    end
  end
end
