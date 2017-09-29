class FlightDeals::CLI

  def call
    puts "Welcome to Cole's Flight Deals!"
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "Welcome to Cole's Flight Deals!"
      @deals = FlightDeals::Deal.today
      @deals.each.with_index(1) do |deal, t|
        puts "#{t}. #{deal}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the deal you would like more information about or type 'exit'"
      input = gets.strip.downcase

      if input.to_i > 0
        the_deal = @deals[input.to_i - 1]
        puts "#{the_deal.name} - #{the_deal.price}"
        puts "#{the_deal.description}"
      elsif input == "exit"
        goodbye
      else
        puts "That is not a command, please try again"
      end
    end
  end

  def goodbye
    puts "Come back soon for sweet deals!"
  end
end
