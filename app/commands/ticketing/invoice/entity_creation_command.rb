module Ticketing
  module Invoice
    class EntityCreationCommand
      include ActiveModel::Model

      attr_accessor :amount
      attr_accessor :owner_id

      validates :amount, presence: true
      validates :owner_id, presence: true

      def call
        if valid?
          create_invoice
        else
          false
        end
      end

      def persisted?
        false
      end

      private

      def create_invoice
        Repositories::Core::User.create(this.attributes)
      end
    end
  end
end
