require_relative "./flight_deals/version"
require_relative "./flight_deals/CLI"

class FlightDeals::Deals
  attr_accessor :name, :price, :description

  def self.today
    self.scrape_deals
  end

  def self.scrape_deals
    deals = []
    deals << self.scrape_url
    deals
  end

  def scrape_url
    doc = Nokogiri::HTML(open("https://www.theflightdeal.com/"))

    deal = self.new
    deal.name = doc.search("url").text.strip
    deal.price = doc.search("url").text.strip
    deal.description = doc.search("url").text.strip

    deal
  end
end
