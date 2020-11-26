# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_06_01
  module Models
    #
    # The tag resource.
    #
    class Tag

      include MsRestAzure

      # @return [String] Tag key.
      attr_accessor :key


      #
      # Mapper for Tag class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Tag',
          type: {
            name: 'Composite',
            class_name: 'Tag',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
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
