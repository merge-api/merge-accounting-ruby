=begin
#Merge Accounting API

#The unified API for building rich integrations with multiple Accounting & Finance platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module MergeAccountingClient
  class InvoiceTypeEnum
    RECEIVABLE = "ACCOUNTS_RECEIVABLE".freeze
    PAYABLE = "ACCOUNTS_PAYABLE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = InvoiceTypeEnum.constants.select { |c| InvoiceTypeEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #InvoiceTypeEnum" if constantValues.empty?
      value
    end
  end
end
