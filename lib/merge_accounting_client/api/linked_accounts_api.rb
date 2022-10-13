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
  class LinkedAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List linked accounts for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category 
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :end_user_email_address If provided, will only return linked accounts associated with the given email address.
    # @option opts [String] :end_user_organization_name If provided, will only return linked accounts associated with the given organization name.
    # @option opts [String] :end_user_origin_id If provided, will only return linked accounts associated with the given origin ID.
    # @option opts [String] :end_user_origin_ids Comma-separated list of EndUser origin IDs, making it possible to specify multiple EndUsers at once.
    # @option opts [String] :id 
    # @option opts [String] :ids Comma-separated list of LinkedAccount IDs, making it possible to specify multiple LinkedAccounts at once.
    # @option opts [Boolean] :include_duplicates If &#x60;true&#x60;, will include complete production duplicates of the account specified by the &#x60;id&#x60; query parameter in the response. &#x60;id&#x60; must be for a complete production linked account.
    # @option opts [String] :integration_name If provided, will only return linked accounts associated with the given integration name.
    # @option opts [String] :is_test_account If included, will only include test linked accounts. If not included, will only include non-test linked accounts.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :status Filter by status. Options: &#x60;COMPLETE&#x60;, &#x60;INCOMPLETE&#x60;, &#x60;RELINK_NEEDED&#x60;
    # @return [PaginatedAccountDetailsAndActionsList]
    def linked_accounts_list(opts = {})
      data, _status_code, _headers = linked_accounts_list_with_http_info(opts)
      data
    end

    # List linked accounts for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :category 
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :end_user_email_address If provided, will only return linked accounts associated with the given email address.
    # @option opts [String] :end_user_organization_name If provided, will only return linked accounts associated with the given organization name.
    # @option opts [String] :end_user_origin_id If provided, will only return linked accounts associated with the given origin ID.
    # @option opts [String] :end_user_origin_ids Comma-separated list of EndUser origin IDs, making it possible to specify multiple EndUsers at once.
    # @option opts [String] :id 
    # @option opts [String] :ids Comma-separated list of LinkedAccount IDs, making it possible to specify multiple LinkedAccounts at once.
    # @option opts [Boolean] :include_duplicates If &#x60;true&#x60;, will include complete production duplicates of the account specified by the &#x60;id&#x60; query parameter in the response. &#x60;id&#x60; must be for a complete production linked account.
    # @option opts [String] :integration_name If provided, will only return linked accounts associated with the given integration name.
    # @option opts [String] :is_test_account If included, will only include test linked accounts. If not included, will only include non-test linked accounts.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :status Filter by status. Options: &#x60;COMPLETE&#x60;, &#x60;INCOMPLETE&#x60;, &#x60;RELINK_NEEDED&#x60;
    # @return [Array<(PaginatedAccountDetailsAndActionsList, Integer, Hash)>] PaginatedAccountDetailsAndActionsList data, response status code and response headers
    def linked_accounts_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkedAccountsApi.linked_accounts_list ...'
      end
      allowable_values = ["accounting", "ats", "crm", "hris", "ticketing"]
      if @api_client.config.client_side_validation && opts[:'category'] && !allowable_values.include?(opts[:'category'])
        fail ArgumentError, "invalid value for \"category\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/linked-accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'category'] = opts[:'category'] if !opts[:'category'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'end_user_email_address'] = opts[:'end_user_email_address'] if !opts[:'end_user_email_address'].nil?
      query_params[:'end_user_organization_name'] = opts[:'end_user_organization_name'] if !opts[:'end_user_organization_name'].nil?
      query_params[:'end_user_origin_id'] = opts[:'end_user_origin_id'] if !opts[:'end_user_origin_id'].nil?
      query_params[:'end_user_origin_ids'] = opts[:'end_user_origin_ids'] if !opts[:'end_user_origin_ids'].nil?
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'ids'] = opts[:'ids'] if !opts[:'ids'].nil?
      query_params[:'include_duplicates'] = opts[:'include_duplicates'] if !opts[:'include_duplicates'].nil?
      query_params[:'integration_name'] = opts[:'integration_name'] if !opts[:'integration_name'].nil?
      query_params[:'is_test_account'] = opts[:'is_test_account'] if !opts[:'is_test_account'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedAccountDetailsAndActionsList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"LinkedAccountsApi.linked_accounts_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinkedAccountsApi#linked_accounts_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
