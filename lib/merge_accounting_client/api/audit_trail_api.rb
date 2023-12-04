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
  class AuditTrailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets a list of audit trail events.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :end_date If included, will only include audit trail events that occured before this time
    # @option opts [String] :event_type If included, will only include events with the given event type. Possible values include: &#x60;CREATED_REMOTE_PRODUCTION_API_KEY&#x60;, &#x60;DELETED_REMOTE_PRODUCTION_API_KEY&#x60;, &#x60;CREATED_TEST_API_KEY&#x60;, &#x60;DELETED_TEST_API_KEY&#x60;, &#x60;REGENERATED_PRODUCTION_API_KEY&#x60;, &#x60;INVITED_USER&#x60;, &#x60;TWO_FACTOR_AUTH_ENABLED&#x60;, &#x60;TWO_FACTOR_AUTH_DISABLED&#x60;, &#x60;DELETED_LINKED_ACCOUNT&#x60;, &#x60;CREATED_DESTINATION&#x60;, &#x60;DELETED_DESTINATION&#x60;, &#x60;CHANGED_SCOPES&#x60;, &#x60;CHANGED_PERSONAL_INFORMATION&#x60;, &#x60;CHANGED_ORGANIZATION_SETTINGS&#x60;, &#x60;ENABLED_INTEGRATION&#x60;, &#x60;DISABLED_INTEGRATION&#x60;, &#x60;ENABLED_CATEGORY&#x60;, &#x60;DISABLED_CATEGORY&#x60;, &#x60;CHANGED_PASSWORD&#x60;, &#x60;RESET_PASSWORD&#x60;, &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60;, &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60;, &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60;, &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60;
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :start_date If included, will only include audit trail events that occured after this time
    # @option opts [String] :user_email If provided, this will return events associated with the specified user email. Please note that the email address reflects the user&#39;s email at the time of the event, and may not be their current email.
    # @return [PaginatedAuditLogEventList]
    def audit_trail_list(opts = {})
      data, _status_code, _headers = audit_trail_list_with_http_info(opts)
      data
    end

    # Gets a list of audit trail events.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :end_date If included, will only include audit trail events that occured before this time
    # @option opts [String] :event_type If included, will only include events with the given event type. Possible values include: &#x60;CREATED_REMOTE_PRODUCTION_API_KEY&#x60;, &#x60;DELETED_REMOTE_PRODUCTION_API_KEY&#x60;, &#x60;CREATED_TEST_API_KEY&#x60;, &#x60;DELETED_TEST_API_KEY&#x60;, &#x60;REGENERATED_PRODUCTION_API_KEY&#x60;, &#x60;INVITED_USER&#x60;, &#x60;TWO_FACTOR_AUTH_ENABLED&#x60;, &#x60;TWO_FACTOR_AUTH_DISABLED&#x60;, &#x60;DELETED_LINKED_ACCOUNT&#x60;, &#x60;CREATED_DESTINATION&#x60;, &#x60;DELETED_DESTINATION&#x60;, &#x60;CHANGED_SCOPES&#x60;, &#x60;CHANGED_PERSONAL_INFORMATION&#x60;, &#x60;CHANGED_ORGANIZATION_SETTINGS&#x60;, &#x60;ENABLED_INTEGRATION&#x60;, &#x60;DISABLED_INTEGRATION&#x60;, &#x60;ENABLED_CATEGORY&#x60;, &#x60;DISABLED_CATEGORY&#x60;, &#x60;CHANGED_PASSWORD&#x60;, &#x60;RESET_PASSWORD&#x60;, &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60;, &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60;, &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60;, &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60;
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :start_date If included, will only include audit trail events that occured after this time
    # @option opts [String] :user_email If provided, this will return events associated with the specified user email. Please note that the email address reflects the user&#39;s email at the time of the event, and may not be their current email.
    # @return [Array<(PaginatedAuditLogEventList, Integer, Hash)>] PaginatedAuditLogEventList data, response status code and response headers
    def audit_trail_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuditTrailApi.audit_trail_list ...'
      end
      # resource path
      local_var_path = '/audit-trail'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'event_type'] = opts[:'event_type'] if !opts[:'event_type'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'user_email'] = opts[:'user_email'] if !opts[:'user_email'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedAuditLogEventList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AuditTrailApi.audit_trail_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuditTrailApi#audit_trail_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
