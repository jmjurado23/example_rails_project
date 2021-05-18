module Ticketing
  module Invoice
    class BasicEntityRepresentation < BaseRepresentation
      def amount(entity)
        entity.amount
      end

      def id(entity)
        entity.id.to_s
      end

      private

      def representation
        {
          id: :id,
          amount: :amount
        }
      end
    end
  end
end
