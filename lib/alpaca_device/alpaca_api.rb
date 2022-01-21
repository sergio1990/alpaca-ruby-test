require "grape"
require_relative "./management_api/api.rb"
require_relative "./device_api/api.rb"

class AlpacaAPI < Grape::API
  format :json

  mount ::AlpacaManagementAPI => '/management'
  mount ::AlpacaDeviceAPI => '/api'

  get :ping do
    {text: "pong"}
  end
end
