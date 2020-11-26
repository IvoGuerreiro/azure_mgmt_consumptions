# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # Model object.
    #
    #
    class BalancePropertiesAdjustmentDetailsItem

      include MsRestAzure

      # @return [String] the name of new adjustment.
      attr_accessor :name

      # @return the value of new adjustment.
      attr_accessor :value


      #
      # Mapper for BalancePropertiesAdjustmentDetailsItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BalanceProperties_adjustmentDetailsItem',
          type: {
            name: 'Composite',
            class_name: 'BalancePropertiesAdjustmentDetailsItem',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
