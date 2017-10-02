class FlightDeals::Deal
  attr_accessor :name, :desc

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
    @deals = []
    doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))
    deal = self.new
    links = doc.search("h1.post-title a")
    links.each do |link|
      deal = self.new
    deal.name = links.attributes["title"].value.scan(/.*\:/)
    binding.pry
    @deals << deal
    end
    desc_links = doc.search("h1.post-title a")
    deal.desc = desc_links["title"]. value.scan(/\:(.*)/).join(" ")
    deal
  end
  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
