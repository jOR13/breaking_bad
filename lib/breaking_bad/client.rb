# frozen_string_literal: true

require "json"
require "net/http"
module BreakingBad
  class Client
    attr_accessor :uri, :response

    def initialize(uri)
      @uri = uri
      @response = nil
    end

    def get(path)
      uri = URI.join(@uri, path)
      response = Net::HTTP.get_response(uri)
      @response = JSON.parse(response.body, symbolize_names: true)
    end

    # this api wont support post, put, patch and delete methods!

    # def post(path, body)
    #    uri = URI.join(@uri, path)
    #   response = Net::HTTP.post_form(uri, body)
    #   @response = JSON.parse(response.body, symbolize_names: true)
    # end

    # def put(path, body)
    #    uri = URI.join(@uri, path)
    #   response = Net::HTTP.put(uri, body)
    #   @response = JSON.parse(response.body, symbolize_names: true)
    # end

    # def delete(path)
    #    uri = URI.join(@uri, path)
    #   response = Net::HTTP.delete(uri)
    #   @response = JSON.parse(response.body, symbolize_names: true)
    # end

    # def patch(path, body)
    #    uri = URI.join(@uri, path)
    #   response = Net::HTTP.patch(uri, body)
    #   @response = JSON.parse(response.body, symbolize_names: true)
    # end
  end
end
