# frozen_string_literal: true

# This file is autogenerated by Deimos, Do NOT modify
module Schemas
  ### Primary Schema Class ###
  # Autogenerated Schema for Record at com.my-namespace.MySchemaWithComplexTypes
  class MySchemaWithComplexType < Deimos::SchemaClass::Record

    ### Secondary Schema Classes ###
    # Autogenerated Schema for Record at com.my-namespace.ARecord
    class ARecord < Deimos::SchemaClass::Record

      ### Attribute Accessors ###
      # @param value [String]
      attr_accessor :a_record_field

      # @override
      def initialize(a_record_field: nil)
        super
        self.a_record_field = a_record_field
      end

      # @override
      def schema
        'ARecord'
      end

      # @override
      def namespace
        'com.my-namespace'
      end

      # @override
      def to_h
        {
          'a_record_field' => @a_record_field
        }
      end
    end

    # Autogenerated Schema for Enum at com.my-namespace.AnEnum
    class AnEnum < Deimos::SchemaClass::Enum
      # @return ['sym1', 'sym2']
      attr_accessor :an_enum

      # :nodoc:
      def initialize(an_enum)
        super
        self.an_enum = an_enum
      end

      # @override
      def symbols
        %w(sym1 sym2)
      end

      # @override
      def to_h
        @an_enum
      end
    end

    # Autogenerated Schema for Enum at com.my-namespace.AnotherEnum
    class AnotherEnum < Deimos::SchemaClass::Enum
      # @return ['sym3', 'sym4']
      attr_accessor :another_enum

      # :nodoc:
      def initialize(another_enum)
        super
        self.another_enum = another_enum
      end

      # @override
      def symbols
        %w(sym3 sym4)
      end

      # @override
      def to_h
        @another_enum
      end
    end

    # Autogenerated Schema for Enum at com.my-namespace.YetAnotherEnum
    class YetAnotherEnum < Deimos::SchemaClass::Enum
      # @return ['sym5', 'sym6']
      attr_accessor :yet_another_enum

      # :nodoc:
      def initialize(yet_another_enum)
        super
        self.yet_another_enum = yet_another_enum
      end

      # @override
      def symbols
        %w(sym5 sym6)
      end

      # @override
      def to_h
        @yet_another_enum
      end
    end


    ### Attribute Readers ###
    # @return [ARecord]
    attr_reader :some_record
    # @return [nil, ARecord]
    attr_reader :some_optional_record
    # @return [Array<ARecord>]
    attr_reader :some_record_array
    # @return [Hash<String, ARecord>]
    attr_reader :some_record_map
    # @return [Array<AnEnum>]
    attr_reader :some_enum_array
    # @return [nil, AnotherEnum]
    attr_reader :some_optional_enum
    # @return [YetAnotherEnum]
    attr_reader :some_enum_with_default

    ### Attribute Accessors ###
    # @param value [String]
    attr_accessor :test_id
    # @param value [Float]
    attr_accessor :test_float
    # @param values [Array<String>]
    attr_accessor :test_string_array
    # @param values [Array<Integer>]
    attr_accessor :test_int_array
    # @param value [Integer, nil]
    attr_accessor :test_optional_int
    # @param values [Hash<String, Integer>]
    attr_accessor :some_integer_map

    ### Attribute Writers ###
    # @param value [ARecord]
    def some_record=(value)
      @some_record = ARecord.initialize_from_value(value)
    end

    # @param value [nil, ARecord]
    def some_optional_record=(value)
      @some_optional_record = ARecord.initialize_from_value(value)
    end

    # @param values [Array<ARecord>]
    def some_record_array=(values)
      @some_record_array = values.map do |value|
        ARecord.initialize_from_value(value)
      end
    end

    # @param values [Hash<String, ARecord>]
    def some_record_map=(values)
      @some_record_map = values.transform_values do |value|
        ARecord.initialize_from_value(value)
      end
    end

    # @param values [Array<AnEnum>]
    def some_enum_array=(values)
      @some_enum_array = values.map do |value|
        AnEnum.initialize_from_value(value)
      end
    end

    # @param value [nil, AnotherEnum]
    def some_optional_enum=(value)
      @some_optional_enum = AnotherEnum.initialize_from_value(value)
    end

    # @param value [YetAnotherEnum]
    def some_enum_with_default=(value)
      @some_enum_with_default = YetAnotherEnum.initialize_from_value(value)
    end

    # @override
    def initialize(test_id: nil,
                   test_float: nil,
                   test_string_array: ["test"],
                   test_int_array: [123],
                   test_optional_int: 123,
                   some_integer_map: {"abc"=>123},
                   some_record: {"a_record_field"=>"Test String"},
                   some_optional_record: nil,
                   some_record_array: nil,
                   some_record_map: nil,
                   some_enum_array: nil,
                   some_optional_enum: nil,
                   some_enum_with_default: "sym6")
      super
      self.test_id = test_id
      self.test_float = test_float
      self.test_string_array = test_string_array
      self.test_int_array = test_int_array
      self.test_optional_int = test_optional_int
      self.some_integer_map = some_integer_map
      self.some_record = some_record
      self.some_optional_record = some_optional_record
      self.some_record_array = some_record_array
      self.some_record_map = some_record_map
      self.some_enum_array = some_enum_array
      self.some_optional_enum = some_optional_enum
      self.some_enum_with_default = some_enum_with_default
    end

    # @override
    def schema
      'MySchemaWithComplexTypes'
    end

    # @override
    def namespace
      'com.my-namespace'
    end

    # @override
    def to_h
      {
        'test_id' => @test_id,
        'test_float' => @test_float,
        'test_string_array' => @test_string_array,
        'test_int_array' => @test_int_array,
        'test_optional_int' => @test_optional_int,
        'some_integer_map' => @some_integer_map,
        'some_record' => @some_record&.to_h,
        'some_optional_record' => @some_optional_record&.to_h,
        'some_record_array' => @some_record_array.map { |v| v&.to_h },
        'some_record_map' => @some_record_map.transform_values { |v| v&.to_h },
        'some_enum_array' => @some_enum_array.map { |v| v&.to_h },
        'some_optional_enum' => @some_optional_enum&.to_h,
        'some_enum_with_default' => @some_enum_with_default&.to_h
      }
    end
  end
end
