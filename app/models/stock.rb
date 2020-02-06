class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    # client = IEX::Api::Client.new(
    #   publishable_token: Rails.application.credentials.iex_client[:API_key],
    #   endpoint: 'https://sandbox.iexapis.com/v1')
    client = IEX::Api::Client.new(
      publishable_token: "pk_6d226e2032f4482a9bc0ae3527536b72",
      endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
  end
end
