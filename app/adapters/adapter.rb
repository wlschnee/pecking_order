module Adapter
  class YelpAdapter
    attr_accessor :location, :parameters

    def initialize(location, parameters)
      @location = location
      @parameters = parameters
    end

    def cooridnates_search
      Yelp.client.search_by_coordinates(location, parameters)
    end

    def regular_search
      Yelp.client.search(location, parameters)
    end
  end

  class GeocoderAdapter
  include Geocoder
    def self.geocode(user_ip)
      geocoder = Geocoder.search(user_ip)
      { latitude: geocoder[0].data['latitude'], longitude: geocoder[0].data['longitude'] }
    end
  end
end
