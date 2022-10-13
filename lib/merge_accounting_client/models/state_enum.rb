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
  class StateEnum
    AL = "AL".freeze
    AK = "AK".freeze
    AS = "AS".freeze
    AZ = "AZ".freeze
    AR = "AR".freeze
    AA = "AA".freeze
    AE = "AE".freeze
    AP = "AP".freeze
    CA = "CA".freeze
    CO = "CO".freeze
    CT = "CT".freeze
    DE = "DE".freeze
    DC = "DC".freeze
    FL = "FL".freeze
    GA = "GA".freeze
    GU = "GU".freeze
    HI = "HI".freeze
    ID = "ID".freeze
    IL = "IL".freeze
    IN = "IN".freeze
    IA = "IA".freeze
    KS = "KS".freeze
    KY = "KY".freeze
    LA = "LA".freeze
    ME = "ME".freeze
    MD = "MD".freeze
    MA = "MA".freeze
    MI = "MI".freeze
    MN = "MN".freeze
    MS = "MS".freeze
    MO = "MO".freeze
    MT = "MT".freeze
    NE = "NE".freeze
    NV = "NV".freeze
    NH = "NH".freeze
    NJ = "NJ".freeze
    NM = "NM".freeze
    NY = "NY".freeze
    NC = "NC".freeze
    ND = "ND".freeze
    MP = "MP".freeze
    OH = "OH".freeze
    OK = "OK".freeze
    OR = "OR".freeze
    PA = "PA".freeze
    PR = "PR".freeze
    RI = "RI".freeze
    SC = "SC".freeze
    SD = "SD".freeze
    TN = "TN".freeze
    TX = "TX".freeze
    UT = "UT".freeze
    VT = "VT".freeze
    VI = "VI".freeze
    VA = "VA".freeze
    WA = "WA".freeze
    WV = "WV".freeze
    WI = "WI".freeze
    WY = "WY".freeze

    MERGE_NONSTANDARD_VALUE = "MERGE_NONSTANDARD_VALUE".freeze

    attr_accessor :value
    attr_accessor :raw_value

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      @raw_value = value
      if ["AL", "AK", "AS", "AZ", "AR", "AA", "AE", "AP", "CA", "CO", "CT", "DE", "DC", "FL", "GA", "GU", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "MP", "OH", "OK", "OR", "PA", "PR", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VI", "VA", "WA", "WV", "WI", "WY", ].include? value
        @value = value
      else
        @value = MERGE_NONSTANDARD_VALUE
      end

      self
    end

    def self.build_from_hash(value)
      StateEnum.new.build_from_hash(value)
    end
  end

end
