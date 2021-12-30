# frozen_string_literal: true

require_relative "breaking_bad/version"
require_relative "breaking_bad/client"
require_relative "breaking_bad/methods_request"
# endpoints
require_relative "breaking_bad/endpoints/quote"
require_relative "breaking_bad/endpoints/character"
require_relative "breaking_bad/endpoints/episode"

module BreakingBad
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end

  # quotes
  def self.find_quotes
    Quote.new.all
  end

  def self.find_quote(id)
    Quote.new.find(id)
  end

  def self.find_random_quote
    Quote.new.random
  end

  def self.find_quote_by_author(author)
    Quote.new.find_by_author(author)
  end

  def self.find_quote_by_series(series)
    Quote.new.find_by_series(series)
  end

  # characters
  def self.find_characters
    Character.new.all
  end

  def self.find_character(id)
    Character.new.find(id)
  end

  def self.find_random_character
    Character.new.random
  end

  def self.find_character_by_category(category)
    Character.new.find_by_category(category)
  end

  def self.find_character_with_limit(limit)
    Character.new.find_with_limit(limit)
  end

  def self.find_character_by_name(name)
    Character.new.find_by_name(name)
  end

  # episodes
  def self.find_episodes
    Episode.new.all
  end

  def self.find_episode(id)
    Episode.new.find(id)
  end

  def self.find_random_episode
    Episode.new.random
  end

  def self.find_episode_by_series(series)
    Episode.new.find_by_series(series)
  end
end
