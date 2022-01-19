require "grape"
require_relative './apiv1.rb'

class AlpacaManagementAPI < Grape::API
  mount AlpacaManagementAPIv1 => 'v1'

  params do
    optional :ClientID, type: Integer, allow_blank: false
    optional :ClientTransactionID, type: Integer, allow_blank: false
  end
  get :apiversions do
    {
      'Value' => [1],
      'ClientTransactionID' => params[:ClientTransactionID],
      'ServerTransactionID' => 1
    }
  end
end
