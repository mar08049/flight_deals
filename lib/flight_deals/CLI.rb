class FlightDeals::CLI

  def call
    FlightDeals::Scraper.scrape_deals
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "Welcome to Cole's Flight Deals!"
    puts "We offer daily deals for flights out of Houston!"
    puts "-------------------------------"
    puts "Here is today's flight deals:"
    FlightDeals::Deal.all.each_with_index do |deal, index|
      puts "#{index + 1}. #{deal.name}"
    end
  end

  def menu
    puts "Please select the number of the deal you would like to view or type 'exit'."
    input = nil
      while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 10
        selected_deal = FlightDeals::Deal.all[input.to_i - 1]
        puts "------------------------------------------------------------------"
        puts "Here is more information on this deal:"
        puts selected_deal.name
        puts selected_deal.desc
        puts "For more information go to https://escapehouston.com/category/cheap-flights-from-houston/"
        puts "------------------------------------------------------------------"
        puts "Please select the number of the deal you would like to view or type 'exit'."
      elsif input == "no"
        puts "------------------------------------------------------------------"
        puts "For more information go to https://escapehouston.com/category/cheap-flights-from-houston/"
      else
        puts "Invalid response, Please select the number of the deal you would like to view or type 'exit'."
        
      end
    end
  end

  def goodbye
    puts "-------------------------------"
    puts "Come back soon for more sweet deals!"
  end
end
