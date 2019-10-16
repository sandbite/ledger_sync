# frozen_string_literal: true

module LedgerSync
  module Type
    class ReferenceOne < Value # :nodoc:
      include ValueMixin

      attr_reader :resource_class

      def initialize(resource_class:)
        @resource_class = resource_class
        super()
      end

      def error_message(attribute:, resource:, value:)
        "Attribute #{attribute.name} for #{resource.class.name} should be a #{resource_class.name}.  Given #{value.class.name}"
      end

      def type
        :reference_one
      end

      def valid_without_casting?(value:)
        return true if value.nil?
        return true if value.is_a?(resource_class)

        false
      end
    end
  end
end
