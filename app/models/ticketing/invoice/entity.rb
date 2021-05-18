module Ticketing
  module Invoice
    class Entity
      include Mongoid::Document

      # Ticketing::Invoice::Entity está definido de forma que contenga los datos de invoice
      # Esta estructura se realizará cuando el modelo sea lo suficientemente complejo para
      # necesitar de un módulo dentro de un elemento. Se definirá bajo Model el objeto principal

      # CAMPOS
      field :amount, type: Integer

      # RELACIONES
      belongs_to :owner, class_name: 'Core::User', inverse_of: :invoices
      has_many :payments, class_name: 'Ticketing::Invoice::Payment', inverse_of: :invoice
    end
  end
end
