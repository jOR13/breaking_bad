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
      case response
      when Net::HTTPOK
        JSON.parse(response.body, symbolize_names: true)
      when Net::HTTPSuccess
        # JSON.parse(response.body, symbolize_names: true)
      when Net::HTTPUnauthorized
        raise ClientError, "Unauthorized"
      when Net::HTTPNotFound
        raise ClientError, "Not Found"
      else
        raise ServerError, "Unknown Error"
      end
    end
  end
end
