=begin
#Merge Accounting API

#The unified API for building rich integrations with multiple Accounting & Finance platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module MergeAccountingClient
  class ForceResyncApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Force re-sync of all models. This is only available for organizations on Merge's Grow and Expand plans.
    # @param [Hash] opts the optional parameters
    # @return [Array<SyncStatus>]
    def sync_status_resync_create(opts = {})
      data, _status_code, _headers = sync_status_resync_create_with_http_info(opts)
      data
    end

    # Force re-sync of all models. This is only available for organizations on Merge&#39;s Grow and Expand plans.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SyncStatus>, Integer, Hash)>] Array<SyncStatus> data, response status code and response headers
    def sync_status_resync_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ForceResyncApi.sync_status_resync_create ...'
      end
      # resource path
      local_var_path = '/sync-status/resync'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<SyncStatus>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accountTokenAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ForceResyncApi.sync_status_resync_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ForceResyncApi#sync_status_resync_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
