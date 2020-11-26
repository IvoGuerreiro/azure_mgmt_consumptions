# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_11_01_preview
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class BillingProfilePricesheet
    include MsRestAzure

    #
    # Creates and initializes a new instance of the BillingProfilePricesheet class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Get pricesheet data for invoice id (invoiceName).
    #
    # @param billing_account_id [String] Azure Billing Account Id.
    # @param billing_profile_id [String] Azure Billing Profile Id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PricesheetDownloadResponse] operation results.
    #
    def download(billing_account_id, billing_profile_id, custom_headers:nil)
      response = download_async(billing_account_id, billing_profile_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param billing_account_id [String] Azure Billing Account Id.
    # @param billing_profile_id [String] Azure Billing Profile Id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def download_async(billing_account_id, billing_profile_id, custom_headers:nil)
      # Send request
      promise = begin_download_async(billing_account_id, billing_profile_id, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::PricesheetDownloadResponse.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method, FinalStateVia::LOCATION)
      end

      promise
    end

    #
    # Get pricesheet data for invoice id (invoiceName).
    #
    # @param billing_account_id [String] Azure Billing Account Id.
    # @param billing_profile_id [String] Azure Billing Profile Id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PricesheetDownloadResponse] operation results.
    #
    def begin_download(billing_account_id, billing_profile_id, custom_headers:nil)
      response = begin_download_async(billing_account_id, billing_profile_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get pricesheet data for invoice id (invoiceName).
    #
    # @param billing_account_id [String] Azure Billing Account Id.
    # @param billing_profile_id [String] Azure Billing Profile Id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_download_with_http_info(billing_account_id, billing_profile_id, custom_headers:nil)
      begin_download_async(billing_account_id, billing_profile_id, custom_headers:custom_headers).value!
    end

    #
    # Get pricesheet data for invoice id (invoiceName).
    #
    # @param billing_account_id [String] Azure Billing Account Id.
    # @param billing_profile_id [String] Azure Billing Profile Id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_download_async(billing_account_id, billing_profile_id, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_account_id is nil' if billing_account_id.nil?
      fail ArgumentError, 'billing_profile_id is nil' if billing_profile_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'providers/Microsoft.Consumption/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/pricesheet/default/download'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'billingAccountId' => billing_account_id,'billingProfileId' => billing_profile_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2018_11_01_preview::Models::PricesheetDownloadResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
