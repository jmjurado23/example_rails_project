module Core
  class BasicUserRepresentation < BaseRepresentation
    def datetime(entity)
      DateTime.now
    end

    def email(entity)
      entity.email
    end

    def invoices_representation(entity)
      Ticketing::Invoice::BasicEntityRepresentation.new(entity.invoices)
    end

    private

    def representation
      {
        email: :email,
        invoices: :invoices_representation,
        datetime: :datetime
      }
    end
  end
end
