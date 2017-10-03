class FlightDeals::CLI

  def call
    list_deal
    menu
    goodbye
  end

  def list_deal
    puts "Welcome to Cole's Flight Deals!"
    puts "Here is todays flight deal:"
    @deals = FlightDeals::Deal.today
    puts "#{deal.name}"
  end
  end

  def menu
    input = nil
    while input != "no"
      puts "Would you like to learn more about this deal? Type 'yes' or 'no'"
      input = gets.strip.downcase

      if input == "yes"
        puts "Here is the info you requested:"
        puts "#{deal.name}"
        puts "#{deal.desc}"
      else
        puts "Would you like to learn more about this deal? Type 'yes' or 'no'"
      end

  end

  def goodbye
    puts "Come back soon for sweet deals!"
  end
end
