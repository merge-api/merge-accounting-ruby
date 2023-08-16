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

# Unit tests for MergeAccountingClient::AsyncPassthroughApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AsyncPassthroughApi' do
  before do
    # run before each test
    @api_instance = MergeAccountingClient::AsyncPassthroughApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AsyncPassthroughApi' do
    it 'should create an instance of AsyncPassthroughApi' do
      expect(@api_instance).to be_instance_of(MergeAccountingClient::AsyncPassthroughApi)
    end
  end

  # unit tests for async_passthrough_create
  # Asynchronously pull data from an endpoint not currently supported by Merge.
  # @param x_account_token Token identifying the end user.
  # @param data_passthrough_request 
  # @param [Hash] opts the optional parameters
  # @return [AsyncPassthroughReciept]
  describe 'async_passthrough_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for async_passthrough_retrieve
  # Retrieves data from earlier async-passthrough POST request
  # @param x_account_token Token identifying the end user.
  # @param async_passthrough_receipt_id 
  # @param [Hash] opts the optional parameters
  # @return [RemoteResponse]
  describe 'async_passthrough_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
