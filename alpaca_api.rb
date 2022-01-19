require "grape"
require_relative "./alpaca_management_api.rb"
require_relative "./alpaca_device_api.rb"

class AlpacaAPI < Grape::API
  format :json

  mount ::AlpacaManagementAPI => '/management'
  mount ::AlpacaDeviceAPI => '/api'

  get :ping do
    {text: "pong"}
  end
end
