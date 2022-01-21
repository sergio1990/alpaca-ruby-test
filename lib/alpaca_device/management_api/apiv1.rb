require 'grape'
require_relative '../../sg_focuser.rb'

class AlpacaManagementAPIv1 < Grape::API
  params do
    optional :ClientID, type: Integer, allow_blank: false
    optional :ClientTransactionID, type: Integer, allow_blank: false
  end
  get :description do
    {
      'Value' => {
        'ServerName': 'First Alpaca Device',
        'Manufacturer': 'Sergey Gernyak',
        'ManufacturerVersion': 'v1.0.0',
        'Location': 'Kyiv, UA'
      },
      'ClientTransactionID' => params[:ClientTransactionID] || 0,
      'ServerTransactionID' => 1
    }
  end


  params do
    optional :ClientID, type: Integer, allow_blank: false
    optional :ClientTransactionID, type: Integer, allow_blank: false
  end
  get :configureddevices do
    configured_devices = AlpacaDevice.config.devices_data_source.configured_devices
    devices_api_output = configured_devices.map do |configured_device|
      {
        'DeviceName' => configured_device.name,
        'DeviceType' => configured_device.type,
        'DeviceNumber' => configured_device.number,
        'UniqueID' => configured_device.uuid
      }
    end
    {
      'Value' => devices_api_output,
      'ClientTransactionID' => params[:ClientTransactionID] || 0,
      'ServerTransactionID' => 1
    }
  end
end
