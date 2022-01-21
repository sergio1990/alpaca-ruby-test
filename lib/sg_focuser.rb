require_relative './alpaca_api/ascom_devices/base_focuser.rb'

class SGFocuser < ::AscomDevices::BaseFocuser
  def initialize
    super(
      name: 'SG Focuser',
      uuid: '37EB4512-DE9D-4AD0-BB9A-B512D2201324'
    )
  end
end
