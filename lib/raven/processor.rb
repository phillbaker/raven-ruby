require 'json'

module Raven
  class Processor
    attr_accessor :sanitize_fields

    def initialize(client)
      @client = client
      @sanitize_fields = client.configuration.sanitize_fields
    end

    def process(data)
      data
    end

    private

    def parse_json_or_nil(string)
      begin
        result = OkJson.decode(string)
        result.is_a?(String) ? nil : result
      rescue Raven::OkJson::Error
        nil
      end
    end

  end
end
