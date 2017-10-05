class FlightDeals::Scraper

  def self.scrape_deals

    doc = Nokogiri::HTML(open("https://escapehouston.com/category/cheap-flights-from-houston/"))

    doc.css(".category-daily-flight-deals").each do |flight|
      deal = FlightDeals::Deal.new
      deal.name = flight.css("h2.excerpt-title a").text.scan(/^[^$]+/)[0]
      deal.desc = flight.css(".excerpt-content p").text.scan(/^[^.]+/)[0]
    end
  end
end
