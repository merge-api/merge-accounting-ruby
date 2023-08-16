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
  # # The JournalLine Object ### Description The `JournalLine` object is used to represent a journal entry's line items.  ### Usage Example Fetch from the `GET JournalEntry` endpoint and view the journal entry's line items.
  class JournalLine
    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    attr_accessor :account

    # The value of the line item including taxes and other fees.
    attr_accessor :net_amount

    attr_accessor :tracking_category

    attr_accessor :tracking_categories

    attr_accessor :contact

    # The line's description.
    attr_accessor :description

    # The journal line item's exchange rate.
    attr_accessor :exchange_rate

    # This is the datetime that this object was last updated by Merge
    attr_accessor :modified_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'remote_id' => :'remote_id',
        :'account' => :'account',
        :'net_amount' => :'net_amount',
        :'tracking_category' => :'tracking_category',
        :'tracking_categories' => :'tracking_categories',
        :'contact' => :'contact',
        :'description' => :'description',
        :'exchange_rate' => :'exchange_rate',
        :'modified_at' => :'modified_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'remote_id' => :'String',
        :'account' => :'String',
        :'net_amount' => :'Float',
        :'tracking_category' => :'String',
        :'tracking_categories' => :'Array<String>',
        :'contact' => :'String',
        :'description' => :'String',
        :'exchange_rate' => :'String',
        :'modified_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'account',
        :'net_amount',
        :'tracking_category',
        :'contact',
        :'description',
        :'exchange_rate',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeAccountingClient::JournalLine` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeAccountingClient::JournalLine`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'net_amount')
        self.net_amount = attributes[:'net_amount']
      end

      if attributes.key?(:'tracking_category')
        self.tracking_category = attributes[:'tracking_category']
      end

      if attributes.key?(:'tracking_categories')
        if (value = attributes[:'tracking_categories']).is_a?(Array)
          self.tracking_categories = value
        end
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'exchange_rate')
        self.exchange_rate = attributes[:'exchange_rate']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^-?\d{0,32}(?:\.\d{0,16})?$/)
      if !@exchange_rate.nil? && @exchange_rate.to_s !~ pattern
        invalid_properties.push("invalid value for \"exchange_rate\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@exchange_rate.nil? && @exchange_rate.to_s !~ Regexp.new(/^-?\d{0,32}(?:\.\d{0,16})?$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] exchange_rate Value to be assigned
    def exchange_rate=(exchange_rate)
      pattern = Regexp.new(/^-?\d{0,32}(?:\.\d{0,16})?$/)
      if !exchange_rate.nil? && exchange_rate.to_s !~ pattern
        fail ArgumentError, "invalid value for \"exchange_rate\", must conform to the pattern #{pattern}."
      end

      @exchange_rate = exchange_rate
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          remote_id == o.remote_id &&
          account == o.account &&
          net_amount == o.net_amount &&
          tracking_category == o.tracking_category &&
          tracking_categories == o.tracking_categories &&
          contact == o.contact &&
          description == o.description &&
          exchange_rate == o.exchange_rate &&
          modified_at == o.modified_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [remote_id, account, net_amount, tracking_category, tracking_categories, contact, description, exchange_rate, modified_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MergeAccountingClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
