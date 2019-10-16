module LedgerSync
  module Adaptors
    module QuickBooksOnline
      module Customer
        module Operations
          class Create < QuickBooksOnline::Operation::Create
            class Contract < LedgerSync::Adaptors::Contract
              params do
                required(:ledger_id).value(:nil)
                required(:email).maybe(:string)
                required(:name).filled(:string)
                required(:phone_number).maybe(:string)
              end
            end
          end
        end
      end
    end
  end
end
