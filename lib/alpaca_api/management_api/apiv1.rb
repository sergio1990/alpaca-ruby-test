require 'grape'

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
    {
      'Value' => [
        {
          'DeviceName' => 'SG Focuser',
          'DeviceType' => 'Focuser',
          'DeviceNumber' => 0,
          'UniqueID' => '37EB4512-DE9D-4AD0-BB9A-B512D2201324'
        }
      ],
      'ClientTransactionID' => params[:ClientTransactionID] || 0,
      'ServerTransactionID' => 1
    }
  end
end
