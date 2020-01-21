# frozen_string_literal: true

# require_relative '../../operation/create'

module LedgerSync
  module Adaptors
    module NetSuite
      module Currency
        module Operations
          class Create < NetSuite::Operation::Create
            class Contract < LedgerSync::Adaptors::Contract
              params do
                required(:external_id).maybe(:string)
                required(:ledger_id).value(:nil)
                required(:exchange_rate).filled(:float)
                required(:name).filled(:string)
                required(:symbol).filled(:string)
              end
            end
          end
        end
      end
    end
  end
end