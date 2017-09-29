class FlightDeals::CLI

  def call
    list_deals
    menu
    goodbye
  end

  def list_deals
    puts "Welcome to Cole's Flight Deals!"
    puts <<-DOC
      1. American – $514: Los Angeles – Beijing, China. Roundtrip, including all Taxes
      2. United – $894: Portland – Sydney, Australia. Roundtrip, including all Taxes
      3. American – $227 (Regular Economy) / $197 (Basic Economy): Phoenix – Raleigh / Durham, North Carolina (and vice versa). Roundtrip, including all Taxes
    DOC
    @deals = FlightDeals::Deal.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the deal you would like more information about or type 'exit'"
      input = gets.strip.downcase

      case input
      when "1"
        puts "More info on deal 1..."
      when "2"
        puts "More info on deal 2..."
      when "3"
        puts "More info on deal 3..."
      else
        puts "That is not a command, please try again"
      end
    end
  end

  def goodbye
    puts "Come back soon for sweet deals!"
  end
end
