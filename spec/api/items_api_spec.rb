=begin
#Merge Accounting API

#The unified API for building rich integrations with multiple Accounting & Finance platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeAccountingClient::ItemsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ItemsApi' do
  before do
    # run before each test
    @api_instance = MergeAccountingClient::ItemsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ItemsApi' do
    it 'should create an instance of ItemsApi' do
      expect(@api_instance).to be_instance_of(MergeAccountingClient::ItemsApi)
    end
  end

  # unit tests for items_list
  # Returns a list of &#x60;Item&#x60; objects.
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :company_id If provided, will only return items for this company.
  # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
  # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
  # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :remote_fields Deprecated. Use show_enum_origins.
  # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
  # @option opts [String] :show_enum_origins Which fields should be returned in non-normalized form.
  # @return [PaginatedItemList]
  describe 'items_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for items_retrieve
  # Returns an &#x60;Item&#x60; object with the given &#x60;id&#x60;.
  # @param x_account_token Token identifying the end user.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @option opts [String] :remote_fields Deprecated. Use show_enum_origins.
  # @option opts [String] :show_enum_origins Which fields should be returned in non-normalized form.
  # @return [Item]
  describe 'items_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
