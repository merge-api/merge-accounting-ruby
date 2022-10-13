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

# Unit tests for MergeAccountingClient::AvailableActionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AvailableActionsApi' do
  before do
    # run before each test
    @api_instance = MergeAccountingClient::AvailableActionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AvailableActionsApi' do
    it 'should create an instance of AvailableActionsApi' do
      expect(@api_instance).to be_instance_of(MergeAccountingClient::AvailableActionsApi)
    end
  end

  # unit tests for available_actions_retrieve
  # Returns a list of models and actions available for an account.
  # @param [Hash] opts the optional parameters
  # @return [AvailableActions]
  describe 'available_actions_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
