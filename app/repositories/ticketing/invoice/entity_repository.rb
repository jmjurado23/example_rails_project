module Ticketing
  module Invoice
    class EntityRepository < ::BaseRepository
      def paids
        dataset.where(:payment_ids.ne => [])
      end

      private

      def entity
        ::Ticketing::Invoice::Entity
      end
    end
  end
end
