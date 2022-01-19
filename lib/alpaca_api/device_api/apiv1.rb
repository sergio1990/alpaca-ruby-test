require 'grape'

class AlpacaDeviceAPIv1 < Grape::API
  get :ping do
    {text: "pong"}
  end
end

