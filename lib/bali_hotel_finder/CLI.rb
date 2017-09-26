class BaliHotelFinder::CLI

  def call
    puts "Here are the best Bali Hotels and Resorts!"
    list_locations
    hotel_list
    goodbye
  end

  def list_locations
    puts "In what area would you like to stay?"
    puts "-----------------------------------"
    puts <<-DOC
        1. Jimbaran
        2. Nusa Dua
        3. Pekutatan
        4. Ubud
        5. Denspasar
        6. Seminyak
        7. Legian
        8. Tabanan
      DOC
      @locations = BaliHotelFinder::Hotel.hotel
      @locations.each.with_index(1) do |hotel, i|
        puts "#{i}. #{hotel.name} - #{hotel.location}"
        puts "#{hotel.rating} - #{hotel.contact}"
      end
  end

  def hotel_list
    puts "Enter the number associated with the area you would like to stay in or type 'exit'"
    input = nil
    while input != "exit"
      puts "Enter another number or type 'exit'"
      input = gets.strip.downcase
      case input
      when "1"
        puts hotel_1
      when "2"
        puts hotel_2
      when "3"
        puts hotel_3
      when "4"
        puts hotel_4
      when "5"
        puts hotel_5
      when "6"
        puts hotel_6
      when "7"
        puts hotel_7
      when "8"
        puts hotel_8
      else
        goodbye
      end
    end
  end

  def goodbye
    puts "Come back for more information!!!"
  end
end
