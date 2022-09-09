# frozen_string_literal: true

# This file is autogenerated by Deimos, Do NOT modify
module Schemas; module MyNamespace
  ### Primary Schema Class ###
  # Autogenerated Schema for Record at com.my-namespace.MySchemaWithId
  class MySchemaWithId < Deimos::SchemaClass::Record

    ### Attribute Accessors ###
    # @return [String]
    attr_accessor :test_id
    # @return [Integer]
    attr_accessor :some_int
    # @return [String]
    attr_accessor :message_id
    # @return [String]
    attr_accessor :timestamp

    # @override
    def initialize(test_id: nil,
                   some_int: nil,
                   message_id: nil,
                   timestamp: nil)
      super
      self.test_id = test_id
      self.some_int = some_int
      self.message_id = message_id
      self.timestamp = timestamp
    end

    # @override
    def schema
      'MySchemaWithId'
    end

    # @override
    def namespace
      'com.my-namespace'
    end

    # @override
    def as_json(_opts={})
      {
        'test_id' => @test_id,
        'some_int' => @some_int,
        'message_id' => @message_id,
        'timestamp' => @timestamp
      }
    end
  end
end; end
