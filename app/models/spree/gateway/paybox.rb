module Spree
  class Gateway::Paybox < Gateway
    preference :login, :string
    preference :password, :string

    
    attr_accessible :preferred_login, :preferred_password

    def provider_class
      ActiveMerchant::Billing::PayboxDirectGateway
    end
  end
end
