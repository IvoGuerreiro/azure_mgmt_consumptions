# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2019_10_01
  module Models
    #
    # Legacy usage detail.
    #
    class LegacyUsageDetail < UsageDetail

      include MsRestAzure


      def initialize
        @kind = "legacy"
      end

      attr_accessor :kind

      # @return [String] Billing Account identifier.
      attr_accessor :billing_account_id

      # @return [String] Billing Account Name.
      attr_accessor :billing_account_name

      # @return [DateTime] The billing period start date.
      attr_accessor :billing_period_start_date

      # @return [DateTime] The billing period end date.
      attr_accessor :billing_period_end_date

      # @return [String] Billing Profile identifier.
      attr_accessor :billing_profile_id

      # @return [String] Billing Profile Name.
      attr_accessor :billing_profile_name

      # @return [String] Account Owner Id.
      attr_accessor :account_owner_id

      # @return [String] Account Name.
      attr_accessor :account_name

      # @return [String] Subscription guid.
      attr_accessor :subscription_id

      # @return [String] Subscription name.
      attr_accessor :subscription_name

      # @return [DateTime] Date for the usage record.
      attr_accessor :date

      # @return [String] Product name for the consumed service or purchase. Not
      # available for Marketplace.
      attr_accessor :product

      # @return [String] Part Number of the service used. Can be used to join
      # with the price sheet. Not available for marketplace.
      attr_accessor :part_number

      # @return The meter id (GUID). Not available for marketplace. For
      # reserved instance this represents the primary meter for which the
      # reservation was purchased. For the actual VM Size for which the
      # reservation is purchased see productOrderName.
      attr_accessor :meter_id

      # @return [MeterDetailsResponse] The details about the meter. By default
      # this is not populated, unless it's specified in $expand.
      attr_accessor :meter_details

      # @return The usage quantity.
      attr_accessor :quantity

      # @return Effective Price that's charged for the usage.
      attr_accessor :effective_price

      # @return The amount of cost before tax.
      attr_accessor :cost

      # @return Unit Price is the price applicable to you. (your EA or other
      # contract price).
      attr_accessor :unit_price

      # @return [String] Billing Currency.
      attr_accessor :billing_currency

      # @return [String] Resource Location.
      attr_accessor :resource_location

      # @return [String] Consumed service name. Name of the azure resource
      # provider that emits the usage or was purchased. This value is not
      # provided for marketplace usage.
      attr_accessor :consumed_service

      # @return [String] Azure resource manager resource identifier.
      attr_accessor :resource_id

      # @return [String] Resource Name.
      attr_accessor :resource_name

      # @return [String] Service Info 1.
      attr_accessor :service_info1

      # @return [String] Service Info 2.
      attr_accessor :service_info2

      # @return [String] Additional details of this usage item. By default this
      # is not populated, unless it's specified in $expand. Use this field to
      # get usage line item specific details such as the actual VM Size
      # (ServiceType) or the ratio in which the reservation discount is
      # applied.
      attr_accessor :additional_info

      # @return [String] Invoice Section Name.
      attr_accessor :invoice_section

      # @return [String] The cost center of this department if it is a
      # department and a cost center is provided.
      attr_accessor :cost_center

      # @return [String] Resource Group Name.
      attr_accessor :resource_group

      # @return [String] ARM resource id of the reservation. Only applies to
      # records relevant to reservations.
      attr_accessor :reservation_id

      # @return [String] User provided display name of the reservation. Last
      # known name for a particular day is populated in the daily data. Only
      # applies to records relevant to reservations.
      attr_accessor :reservation_name

      # @return [String] Product Order Id. For reservations this is the
      # Reservation Order ID.
      attr_accessor :product_order_id

      # @return [String] Product Order Name. For reservations this is the SKU
      # that was purchased.
      attr_accessor :product_order_name

      # @return [String] Offer Id. Ex: MS-AZR-0017P, MS-AZR-0148P.
      attr_accessor :offer_id

      # @return [Boolean] Is Azure Credit Eligible.
      attr_accessor :is_azure_credit_eligible

      # @return [String] Term (in months). 1 month for monthly recurring
      # purchase. 12 months for a 1 year reservation. 36 months for a 3 year
      # reservation.
      attr_accessor :term

      # @return [String] Publisher Name.
      attr_accessor :publisher_name

      # @return [String] Publisher Type.
      attr_accessor :publisher_type

      # @return [String] Plan Name.
      attr_accessor :plan_name

      # @return [String] Indicates a charge represents credits, usage, a
      # Marketplace purchase, a reservation fee, or a refund.
      attr_accessor :charge_type

      # @return [String] Indicates how frequently this charge will occur.
      # OneTime for purchases which only happen once, Monthly for fees which
      # recur every month, and UsageBased for charges based on how much a
      # service is used.
      attr_accessor :frequency


      #
      # Mapper for LegacyUsageDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'legacy',
          type: {
            name: 'Composite',
            class_name: 'LegacyUsageDetail',
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
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              billing_account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingAccountId',
                type: {
                  name: 'String'
                }
              },
              billing_account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingAccountName',
                type: {
                  name: 'String'
                }
              },
              billing_period_start_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodStartDate',
                type: {
                  name: 'DateTime'
                }
              },
              billing_period_end_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodEndDate',
                type: {
                  name: 'DateTime'
                }
              },
              billing_profile_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingProfileId',
                type: {
                  name: 'String'
                }
              },
              billing_profile_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingProfileName',
                type: {
                  name: 'String'
                }
              },
              account_owner_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountOwnerId',
                type: {
                  name: 'String'
                }
              },
              account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.accountName',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionId',
                type: {
                  name: 'String'
                }
              },
              subscription_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionName',
                type: {
                  name: 'String'
                }
              },
              date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.date',
                type: {
                  name: 'DateTime'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.product',
                type: {
                  name: 'String'
                }
              },
              part_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.partNumber',
                type: {
                  name: 'String'
                }
              },
              meter_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterId',
                type: {
                  name: 'String'
                }
              },
              meter_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.meterDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MeterDetailsResponse'
                }
              },
              quantity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.quantity',
                type: {
                  name: 'Number'
                }
              },
              effective_price: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.effectivePrice',
                type: {
                  name: 'Number'
                }
              },
              cost: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.cost',
                type: {
                  name: 'Number'
                }
              },
              unit_price: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.unitPrice',
                type: {
                  name: 'Number'
                }
              },
              billing_currency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.billingCurrency',
                type: {
                  name: 'String'
                }
              },
              resource_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceLocation',
                type: {
                  name: 'String'
                }
              },
              consumed_service: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.consumedService',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceId',
                type: {
                  name: 'String'
                }
              },
              resource_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceName',
                type: {
                  name: 'String'
                }
              },
              service_info1: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceInfo1',
                type: {
                  name: 'String'
                }
              },
              service_info2: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceInfo2',
                type: {
                  name: 'String'
                }
              },
              additional_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.additionalInfo',
                type: {
                  name: 'String'
                }
              },
              invoice_section: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.invoiceSection',
                type: {
                  name: 'String'
                }
              },
              cost_center: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.costCenter',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              reservation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationId',
                type: {
                  name: 'String'
                }
              },
              reservation_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.reservationName',
                type: {
                  name: 'String'
                }
              },
              product_order_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.productOrderId',
                type: {
                  name: 'String'
                }
              },
              product_order_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.productOrderName',
                type: {
                  name: 'String'
                }
              },
              offer_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.offerId',
                type: {
                  name: 'String'
                }
              },
              is_azure_credit_eligible: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isAzureCreditEligible',
                type: {
                  name: 'Boolean'
                }
              },
              term: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.term',
                type: {
                  name: 'String'
                }
              },
              publisher_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publisherName',
                type: {
                  name: 'String'
                }
              },
              publisher_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.publisherType',
                type: {
                  name: 'String'
                }
              },
              plan_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.planName',
                type: {
                  name: 'String'
                }
              },
              charge_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.chargeType',
                type: {
                  name: 'String'
                }
              },
              frequency: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.frequency',
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
