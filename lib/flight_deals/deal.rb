class FlightDeals::Deal
  attr_accessor :name

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []

    deals << self.scrape_url
    deals
  end

  def self.scrape_url

    doc = Nokogiri::(open("https://www.theflightdeal.com/"))
    deal = self.new
    deal.name = doc.search("American – $514").text.strip


  end
end
