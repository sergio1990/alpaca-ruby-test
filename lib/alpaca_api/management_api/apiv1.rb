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
    sg_focuser = SGFocuser.new
    {
      'Value' => [
        {
          'DeviceName' => sg_focuser.name,
          'DeviceType' => sg_focuser.type,
          'DeviceNumber' => 0,
          'UniqueID' => sg_focuser.uuid
        }
      ],
      'ClientTransactionID' => params[:ClientTransactionID] || 0,
      'ServerTransactionID' => 1
    }
  end
end
