class FlightDeals::CLI

  def call
    list_deal
    menu
    goodbye
  end

  def list_deal
    puts "Welcome to Cole's Flight Deals!"
    puts "We offer daily deals for flights out of Houston!"
    puts "-------------------------------"
    puts "Here is todays flight deal:"
    @deals = FlightDeals::Deal.today
    @deals.each do |deal|
      puts deal.name
    end
    puts "-------------------------------"
    puts "Would you like to learn more about this deal? Type 'yes', 'no', or 'exit'"
  end

  def menu
    input = nil
      input = gets.strip.downcase

      if input == "yes"
        puts "----------------------------"
        puts "Here is more information on this deal:"
        @deals.each do |deal|
          puts deal.desc
        end
        puts "For more information go to https://escapehouston.com/category/cheap-flights-from-houston/"
      elsif input == "no"
        puts "For more information go to https://escapehouston.com/category/cheap-flights-from-houston/"
      else

    end
  end

  def goodbye
    puts "-------------------------------"
    puts "Come back soon for sweet deals!"
  end
end
