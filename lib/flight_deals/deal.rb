class FlightDeals::Deal
  attr_accessor :name, :desc

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
    doc = Nokogiri::HTML(open("https://www.theflightdeal.com/"))

    deal = self.new
    deal.name = doc.search("h2.post-title cufon_headings").text.scan(/.*\./)
    deal.desc = doc.search("p").text
    deal
  end
  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
