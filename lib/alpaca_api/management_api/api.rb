require "grape"
require_relative './apiv1.rb'

class AlpacaManagementAPI < Grape::API
  mount AlpacaManagementAPIv1 => 'v1'

  params do
    optional :ClientID, type: Integer, allow_blank: false
    optional :ClientTransactionID, type: Integer, allow_blank: false
  end
  get :apiversions do
    puts params
    {
      'Value' => [1, 2, 3, 4, 5, 6],
      'ClientTransactionID' => params[:ClientTransactionID] || 0,
      'ServerTransactionID' => 1
    }
  end
end
