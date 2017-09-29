if input.to_i > 0
  the_deal = @deals[input.to_i - 1]
  puts "#{the_deal.name}"
elsif input == "exit"
  goodbye


  @deals = FlightDeals::Deal.today
  @deals.each.with_index(1) do |deal, t|
    puts "#{t}. #{deal}"
