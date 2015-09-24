module Spree
  class BillingIntegration::Maksut::QuickCheckout < BillingIntegration
    preference :seller_id, :string, default: 'testikauppias'
    preference :key_generation, :string, :default => '001'
    preference :private, :string, :default => '11223344556677889900'
    # preference :language, :string, :default => 'EN'
    # preference :currency, :string, :default => 'EUR'
    # preference :payment_options, :string, :default => 'ACC'

    attr_accessible :preferred_seller_id, :preferred_server, :preferred_test_mode, :preferred_key_generation, :preferred_private
    #, :preferred_language, :preferred_currency,                :preferred_payment_options 

    def provider_class
      ActiveMerchant::Billing::Maksut
    end
    
  end
end
