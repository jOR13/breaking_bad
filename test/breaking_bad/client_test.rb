# frozen_string_literal: true

require "test_helper"

module BreakingBad
  class ClientTest < Minitest::Test
    def client
      Client.new("https://www.breakingbadapi.com/api/")
    end

    def test_client_class_must_exist
      refute_nil Client.new("https://www.breakingbadapi.com/api/")
    end

    def test_client_must_raise_an_exception_when_path_missing
      VCR.use_cassette("client_error") do

        assert_raises BreakingBad::ClientError do
          client.get("")
        end
        
      end
    end

    def test_client_class_must_fetch_all_quotes
      VCR.use_cassette("quotes") do
        assert_instance_of Array, client.get("quotes")
      end
    end

    def test_fetch_all_characters
      VCR.use_cassette("characters") do
        assert_instance_of Array, client.get("characters")
        assert_instance_of Hash, client.get("characters").first
        assert_instance_of Array, client.get("characters/8")
      end
    end
    def test_fetch_all_episodes
      VCR.use_cassette("episodes") do
        assert_instance_of Array, client.get("episodes")
        assert_instance_of Hash, client.get("episodes").first
        assert_instance_of Array, client.get("episodes/8")
      end
    end
  end
end
