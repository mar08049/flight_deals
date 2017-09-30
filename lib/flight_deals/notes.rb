def call
  list_deals
  menu
  goodbye
end

def list_deals
  puts "Welcome to Cole's Flight Deals!"

  @deals = FlightDeals::Deal.today
  @deals.each.with_index(1) do |deal, t|
    puts "#{t}. #{deal.name}"
  end
end

def menu
  input = nil
  while input != "exit"
    puts "Enter the number of the deal you would like more information about or type 'exit'"
    input = gets.strip.downcase

    if input.to_i > 0
      selected_deal = @deals[input.to_i-1]
      puts "#{selected_deal.name}"
    else
      puts "Enter the number of the deal you would like more information about or type 'exit'"
    end
  end
end

def goodbye
  puts "Come back soon for sweet deals!"
end
end


#deal.rb
class FlightDeals::Deal
  attr_accessor :name

  def self.today
    self.scrape_deals
  end

  def self.scrape_url
    doc = Nokogiri::HTML(open("https://www.theflightdeal.com/"))

    deal = self.new
    deal.name = doc.search("h1.post-title cufon_headings").text.strip
    deal
  end

  def self.scrape_deals
   deals = []

   deals << self.scrape_url
   deals
 end
end
