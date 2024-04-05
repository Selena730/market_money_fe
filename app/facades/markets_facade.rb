class MarketsFacade
    attr_reader :market_id

    def initialize(market_id = nil)
      @market_id = market_id
    end
  
    def markets
      MarketsService.new.get_all_markets.map do |data|
        Market.new(data)
      end
    end
  
    def market
      market_data = MarketsService.new.get_one_market(@market_id)
      Market.new(market_data)
    end

    def market_vendors
        MarketVendorsService.new.get_market_vendors(@market_id).map do |vendor_data|
          Vendor.new(vendor_data)
        end
    end
end

