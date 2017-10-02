class FlightDeals::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "Welcome to Cole's Flight Deals!"

    @deals = FlightDeals::Deal.today
    @deals.each.with_index(1) do |deal, index|
      puts "#{index}. #{deal.name}"
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
        puts "Here is the information you requested:"
        puts "#{selected_deal.desc}"
      else
        puts "Enter the number of the deal you would like more information about or type 'exit'"
      end
    end
  end

  def goodbye
    puts "Come back soon for sweet deals!"
  end
end
