class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    # client = IEX::Api::Client.new(
    #   publishable_token: Rails.application.credentials.iex_client[:API_key],
    #   endpoint: 'https://sandbox.iexapis.com/v1')
    client = IEX::Api::Client.new(
      publishable_token: "Tpk_1642d1f8687c45018e00e1e5e371bf87",
      endpoint: 'https://sandbox.iexapis.com/v1')

    begin
      new(ticker:ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))
    rescue => exception
      return nil
    end
  end
end
