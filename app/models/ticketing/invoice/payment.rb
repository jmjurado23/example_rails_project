module Ticketing
  module Invoice
    class Payment
      include Mongoid::Document
      
      # CAMPOS
      field :amount, type: :integer

      ## RELACIONES
      belongs_to :invoice, class_name: 'Ticketing::Invoice::Payment', inverse_of: :payments
    end
  end
end
