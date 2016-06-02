class YelpSearcher
  def self.search(params, user_ip)
    parameters = { term: params[:search_business], limit: 10 }
    if params[:search_location] != ''
      location = params[:search_location]
      Adapter::YelpAdapter.new(location, parameters).regular_search.businesses
    else
Ω      location = Adapter::GeocoderAdapter.geocode(user_ip)
      Adapter::YelpAdapter.new(location, parameters).cooridnates_search.businesses
    end
  end
end
