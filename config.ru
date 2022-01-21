require_relative "./lib/alpaca_device/alpaca_api.rb"
require_relative "./lib/alpaca_device/alpaca_device.rb"
require_relative "./lib/alpaca_device/ascom_devices_data_source.rb"
require_relative "./lib/sg_focuser.rb"

data_source = AscomDevicesDataSource.new
data_source.register_device(SGFocuser.new)

AlpacaDevice.configure do |config|
  config.devices_data_source = data_source
end

run AlpacaAPI
