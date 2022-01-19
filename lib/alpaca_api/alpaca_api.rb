require "grape"
require_relative "./management_api/alpaca_management_api.rb"
require_relative "./device_api/alpaca_device_api.rb"

class AlpacaAPI < Grape::API
  format :json

  mount ::AlpacaManagementAPI => '/management'
  mount ::AlpacaDeviceAPI => '/api'

  get :ping do
    {text: "pong"}
  end
end
