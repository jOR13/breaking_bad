# frozen_string_literal: true

require "json"
require "net/http"

module BreakingBad
  class Client
    def initialize(url)
      @url = url
    end

    def get(path)
      response = Net::HTTP.get_response(URI.join(@url, path))
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
