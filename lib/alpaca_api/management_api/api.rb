require "grape"
require_relative './apiv1.rb'

class AlpacaManagementAPI < Grape::API
  mount AlpacaManagementAPIv1 => 'v1'

  get :ping do
    {text: "pong"}
  end
end
