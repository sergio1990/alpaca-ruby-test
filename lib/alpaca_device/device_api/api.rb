require 'grape'
require_relative './apiv1.rb'

class AlpacaDeviceAPI < Grape::API
  mount AlpacaDeviceAPIv1 => '/v1'
end
