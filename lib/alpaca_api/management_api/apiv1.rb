require 'grape'

class AlpacaManagementAPIv1 < Grape::API
  get :ping do
    {text: "pong"}
  end
end
