class FlightDeals::Deal
  attr_accessor :name, :desc

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
    doc = Nokogiri::HTML(open("https://www.theflightdeal.com/"))

    deal = self.new
<<<<<<< HEAD
    deal.name = doc.search("h1.post-title cufon_headings").text.strip.scan(/.*\./)
    
=======
    deal.name = doc.search("h2.post-title cufon_headings").text.scan(/.*\./)
    deal.desc = doc.search("p").text
>>>>>>> a67fde1d111515763155e27b60af1a318cd5afae
    deal
  end
  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
