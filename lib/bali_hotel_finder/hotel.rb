class BaliHotelFinder::Hotel
  attr_accessor :name, :rating, :location, :address

  def self.hotel
    self.scrape_hotels
  end


  def self.scrape_hotels

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

    hotel_6 = self.new
    hotel_6.name = "The Elysian Boutique Villa Hotel"
    hotel_6.rating = "5.0-star Hotel Class"
    hotel_6.location = "Seminyak"
    hotel_6.address = "Jalan Sari Dewi 18 | Seminyak, Indonesia 80361"

    hotel_7 = self.new
    hotel_7.name = "Villa de daun"
    hotel_7.rating = "5.0-star Hotel Class"
    hotel_7.location = "Legian"
    hotel_7.address = "Jl. Raya Legian | Legian, Indonesia 80361"

    hotel_8 = self.new
    hotel_8.name = "Alili Villas Soori"
    hotel_8.rating = "5.0-star Hotel Class"
    hotel_8.location = "Tabanan"
    hotel_8.address = "Banjar Dukuh, Desa Kelating | Tabanan, Indonesia 82111"

    [hotel_1, hotel_2, hotel_3, hotel_4, hotel_5, hotel_6, hotel_7, hotel_8]
  end
end
