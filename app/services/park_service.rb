class ParkService 
  def self.conn
    Faraday.new("https://developer.nps.gov/api/v1/") do |faraday|
      faraday.params['api_key'] = Rails.application.credentials.parks[:key]
    end
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.state_parks
    get_url("parks")
  end
end