class FlightDeals::Deal
  attr_accessor :name, :desc

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
    doc = Nokogiri::HTML(open("https://www.theflightdeal.com/"))
    binding.pry
    deal = self.new
    deal.name = doc.search("h1.post-title cufon_headings").text.strip.scan(/.*\./)
    deal.desc = doc.search("p").text
  
    deal
  end
  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
