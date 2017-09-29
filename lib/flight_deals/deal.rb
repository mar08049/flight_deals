class FlightDeals::Deals
  attr_accessor :name, 

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
    deal.name = doc.search("h1.post-title cufon_headings").text.strip

    deal
  end
end
