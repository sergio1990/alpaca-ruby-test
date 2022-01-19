require 'grape'

class AlpacaDeviceAPIv1 < Grape::API
  get :ping do
    {text: "pong"}
  end
end

class AlpacaDeviceAPI < Grape::API
  mount AlpacaDeviceAPIv1 => '/v1'

  get :ping do
    {text: "pong"}
  end
end
