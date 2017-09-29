class FlightDeals::Deal
  attr_accessor :name,

  def self.today
    puts <<-DOC
      American – $514: Los Angeles – Beijing, China. Roundtrip, including all Taxes
      United – $894: Portland – Sydney, Australia. Roundtrip, including all Taxes
      American – $227 (Regular Economy) / $197 (Basic Economy): Phoenix – Raleigh / Durham, North Carolina (and vice versa). Roundtrip, including all Taxes
    DOC
  end
end
