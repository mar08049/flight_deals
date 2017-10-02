class FlightDeals::Deal
  attr_accessor :name, :desc

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
    @deal_titles = []
    doc = Nokogiri::HTML(open("https://www.theflightdeal.com/category/flight-deals/"))
    deal = self.new
    links = doc.search("h1.post-title a")
    deal.name = links.first.attributes["title"].value.scan(/.*\:/)
    deal.name.map do |title|
      @deal_titles << deal.name = title
    end
    desc_links = doc.search("h1.post-title a")
    deal.desc = desc_links.first.attributes["title"]. value.scan(/\:(.*)/).join(" ")
    deal
  end
  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
