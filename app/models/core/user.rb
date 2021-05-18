module Core
  class User
    include Mongoid::Document

    # CAMPOS
    field :email, type: String

    # RECIONES
    has_many :invoices, class_name: 'Ticketing::Invoice::Entity', inverse_of: :owner
  end
end
