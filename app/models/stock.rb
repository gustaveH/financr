class Stock < ApplicationRecord
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: 'Tpk_1ce4e71851f84de28cef27f4fd3d9b7d',
            secret_token: 'secret_token',
            endpoint: 'https://sandbox.iexapis.com/v1'
          )
        client.price(ticker_symbol)
    end
end
