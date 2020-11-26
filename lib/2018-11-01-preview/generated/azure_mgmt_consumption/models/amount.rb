# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_11_01_preview
  module Models
    #
    # Object to represent monetary quantities.
    #
    class Amount

      include MsRestAzure

      # @return [String] The currency for the amount value.
      attr_accessor :currency

      # @return [Float] Amount value.
      attr_accessor :value


      #
      # Mapper for Amount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Amount',
          type: {
            name: 'Composite',
            class_name: 'Amount',
            model_properties: {
              currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currency',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
