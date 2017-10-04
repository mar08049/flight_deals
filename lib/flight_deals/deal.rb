class FlightDeals::Deal
  attr_accessor :name, :desc

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
    doc = Nokogiri::HTML(open("https://escapehouston.com/category/cheap-flights-from-houston/"))
    deal = self.new
    deal.name = doc.css("h2.excerpt-title a").text.scan(/^[^$]+/)
    deal.desc = doc.css(".excerpt-content p").text.scan(/^[^.]+/)
  end

  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
