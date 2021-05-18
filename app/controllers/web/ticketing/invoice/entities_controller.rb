module api
  module mobile_app
    module v1
      module Ticketing
        module Invoice
          class EntitiesControllers < ApplicationController
            def create
              result = Ticketing::Invoice::EntityCreationCommand.new(invoice_params)
              if result.call
                render json: {
                  data: Ticketing::Invoice::BasicEntityRepresentation.new(result).as_json
                }
              end
            end

            private

            def invoice_params
              params
            end
          end
        end
      end
    end
  end
end

