# frozen_string_literal: true

require 'spec_helper'

support :input_helpers
support :netsuite_rest_helpers

RSpec.describe 'netsuite_rest/customers/create', type: :feature do
  include InputHelpers
  include NetSuiteRESTHelpers

  let(:resource) do
    LedgerSync::Customer.new(customer_resource)
  end

  let(:input) do
    {
      adaptor: netsuite_rest_adaptor,
      resource: resource
    }
  end

  context '#perform' do
    subject { LedgerSync::Adaptors::NetSuiteREST::Customer::Operations::Create.new(**input).perform }

    it 'creates' do
      stub_customer_find
      stub_customer_create
      expect(subject).to be_a(LedgerSync::OperationResult::Success)
      expect(subject.resource.ledger_id).to eq('1137')
    end
  end
end
