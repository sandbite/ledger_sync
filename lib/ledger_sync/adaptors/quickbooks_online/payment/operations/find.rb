module LedgerSync
  module Adaptors
    module QuickBooksOnline
      module Payment
        module Operations
          class Find < Operation::Find
            class Contract < LedgerSync::Adaptors::Contract
              schema do
                required(:ledger_id).filled(:string)
                optional(:amount).maybe(:integer)
                optional(:currency).maybe(:string)
                optional(:customer).maybe(Types::Reference)
              end
            end

            private

            def operate
              return failure(nil) if resource.ledger_id.nil?

              response = adaptor.find(
                resource: 'payment',
                id: resource.ledger_id
              )

              success(
                resource: ledger_serializer.deserialize(hash: response),
                response: response
              )
            end
          end
        end
      end
    end
  end
end
