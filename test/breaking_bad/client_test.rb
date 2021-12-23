# frozen_string_literal: true

require "test_helper"

module BreakingBad
  class ClientTest < Minitest::Test
    def client
      Client.new("https://www.breakingbadapi.com/api/")
    end

    def test_client_class_must_exist
      refute_nil Client.new("https://www.breakingbadapi.com/api")
    end

    def test_client_class_must_fetch_all_quotes
      VCR.use_cassette("quotes") do
        assert_instance_of Array, client.get("/quotes")
      end
    end
  end
end
