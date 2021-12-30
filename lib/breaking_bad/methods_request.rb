# frozen_string_literal: true

module BreakingBad
  class MethodsRequest
    def initialize
      @client = BreakingBad::Client.new("https://www.breakingbadapi.com/api/")
    end

    def all
      threads = []
      threads << Thread.new { client.get(endpoint_name("s").to_s) }
      threads.map(&:value)
    end

    def find(id)
      client.get("#{endpoint_name("s")}/#{id}")
    end

    def random(*author)
      client.get("#{endpoint_name("s")}/random/#{author}")
    end

    private

    attr_reader :client

    def endpoint_name(*plural)
      @endpoint_name ||= self.class.name.split("::")[-1].downcase + plural.join
    end
  end
end
