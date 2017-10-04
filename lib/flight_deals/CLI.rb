class FlightDeals::CLI

  def call
    list_deal
    menu
    second_input
    goodbye
  end

  def list_deal
    puts "Welcome to Cole's Flight Deals!"
    puts "We offer daily deals for flights out of Houston!"
    puts "-------------------------------"
    puts "Here is today's flight deal:"
    @deals = FlightDeals::Deal.today
    @deals.each do |deal|
      puts deal.name
    end
    puts "-------------------------------"
    puts "* Would you like to learn more about this deal? Type 'yes', 'no', or 'exit'"
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
        puts "------------------------------------------------------------------"
        puts "For more information go to https://escapehouston.com/category/cheap-flights-from-houston/"
      elsif input == "no"
        puts "------------------------------------------------------------------"
        puts "For more information go to https://escapehouston.com/category/cheap-flights-from-houston/"
      else

    end
  end

  def second_input
    input_2 = nil
    puts "* When you are finished exploring type 'done'."
    input_2 = gets.strip.downcase
  end

  def goodbye
    puts "-------------------------------"
    puts "Come back soon for more sweet deals!"
  end
end
