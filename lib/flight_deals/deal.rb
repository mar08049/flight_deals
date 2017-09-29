class FlightDeals::Deal
  attr_accessor :name

  def self.today
    #should return instances of deals.
  
    deal_1 = Deal.new
    deal_1.name = "American – $514"

    deal_2 = Deal.new
    deal_1.name = "United – $894"

    deal_3 = Deal.new
    deal_3.name = "American – $227 (Regular Economy) / $197 (Basic Economy)"

    [deal_1, deal_2]
  end
end
