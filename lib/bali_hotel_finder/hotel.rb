class BaliHotelFinder::Hotels
  attr_accessor :name, :rating, :location, :address

  def self.hotels
    hotel_1 = self.new
    hotel_1.name = "Jamahal Private Resort & Spa"
    hotel_1.rating = "5.0-star Hotel Class"
    hotel_1.location = "Jimbaran"
    hotel_1.address = "Jl. Uluwatu 1 Jimbaran, Bali, Indonesia | Jimbaran, Indonesia 80364"

    hotel_2 = self.new
    hotel_2.name = "Kayumanis Nusa Dua"
    hotel_2.rating = "5.0-star Hotel Class"
    hotel_2.location = "Nusa Dua"
    hotel_2.address = "Btdc Area Nusa Dua | Nusa Dua, Indonesia 80363"

    hotel_3 = self.new
    hotel_3.name = "Kelapa Retreat & Spa"
    hotel_3.rating = "5.0-star Hotel Class"
    hotel_3.location = "Pekutatan"
    hotel_3.address = "Ngurah Rai Road | Pekutatan, Indonesia 62365"

    hotel_4 = self.new
    hotel_4.name = "Komaneka at Bisma"
    hotel_4.rating = "5.0-star Hotel Class"
    hotel_4.location = "Ubud"
    hotel_4.address = "Jalan Bisma | Ubud, Indonesia 80571"

    hotel_5 = self.new
    hotel_5.name = "Mahagiri Villas Sanur"
    hotel_5.rating = "5.0-star Hotel Class"
    hotel_5.location = "Denpasar"
    hotel_5.address = "Jalan Pungutan 31 | Denpasar, Indonesia 80228"

  end

end
