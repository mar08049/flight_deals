class FlightDeals::Deal
  attr_accessor :name, :desc

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
   doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))
   deal = self.new
   deal.name = doc.search("h1.post-title a").text.strip
   deal.desc = doc.search("h1.post-title a").text.strip
  end

  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
