module Ticketing
  class PaymentRepository < ::BaseRepository

    private

    def entity
      ::Ticketing::Invoice::Payment
    end
  end
end
