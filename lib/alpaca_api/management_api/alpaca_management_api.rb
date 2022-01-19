require "grape"

class AlpacaManagementAPI < Grape::API
  get :ping do
    {text: "pong"}
  end
end
