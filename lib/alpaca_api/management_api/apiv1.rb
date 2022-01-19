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
      'ClientTransactionID' => params[:ClientTransactionID],
      'ServerTransactionID' => 1
    }
  end
end
