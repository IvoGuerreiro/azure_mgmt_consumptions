# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_04_01_preview
  module Models
    #
    # A management group aggregated cost resource.
    #
    class ManagementGroupAggregatedCostResult < Resource

      include MsRestAzure

      # @return [String] The id of the billing period resource that the
      # aggregated cost belongs to.
      attr_accessor :billing_period_id

      # @return [DateTime] The start of the date time range covered by
      # aggregated cost.
      attr_accessor :usage_start

      # @return [DateTime] The end of the date time range covered by the
      # aggregated cost.
      attr_accessor :usage_end

      # @return Azure Charges.
      attr_accessor :azure_charges

      # @return Marketplace Charges.
      attr_accessor :marketplace_charges

      # @return Charges Billed Separately.
      attr_accessor :charges_billed_separately

      # @return [String] The ISO currency in which the meter is charged, for
      # example, USD.
      attr_accessor :currency

      # @return [Array<ManagementGroupAggregatedCostResult>] Children of a
      # management group
      attr_accessor :children

      # @return [Array<String>] List of subscription Guids included in the
      # calculation of aggregated cost
      attr_accessor :included_subscriptions

      # @return [Array<String>] List of subscription Guids excluded from the
      # calculation of aggregated cost
      attr_accessor :excluded_subscriptions


      #
      # Mapper for ManagementGroupAggregatedCostResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementGroupAggregatedCostResult',
          type: {
            name: 'Composite',
            class_name: 'ManagementGroupAggregatedCostResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              billing_period_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodId',
                type: {
                  name: 'String'
                }
              },
              usage_start: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageStart',
                type: {
                  name: 'DateTime'
                }
              },
              usage_end: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.usageEnd',
                type: {
                  name: 'DateTime'
                }
              },
              azure_charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.azureCharges',
                type: {
                  name: 'Number'
                }
              },
              marketplace_charges: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.marketplaceCharges',
                type: {
                  name: 'Number'
                }
              },
              charges_billed_separately: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.chargesBilledSeparately',
                type: {
                  name: 'Number'
                }
              },
              currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currency',
                type: {
                  name: 'String'
                }
              },
              children: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.children',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagementGroupAggregatedCostResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagementGroupAggregatedCostResult'
                      }
                  }
                }
              },
              included_subscriptions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.includedSubscriptions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              excluded_subscriptions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.excludedSubscriptions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
