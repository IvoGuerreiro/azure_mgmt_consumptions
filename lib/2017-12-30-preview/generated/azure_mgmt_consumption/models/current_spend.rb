# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2017_12_30_preview
  module Models
    #
    # The current amount of cost which is being tracked for a budget.
    #
    class CurrentSpend

      include MsRestAzure

      # @return The total amount of cost which is being tracked by the budget.
      attr_accessor :amount

      # @return [String] The unit of measure for the budget amount.
      attr_accessor :unit


      #
      # Mapper for CurrentSpend class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CurrentSpend',
          type: {
            name: 'Composite',
            class_name: 'CurrentSpend',
            model_properties: {
              amount: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'amount',
                type: {
                  name: 'Number'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
