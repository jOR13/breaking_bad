# frozen_string_literal: true

require_relative "breaking_bad/version"
require_relative "breaking_bad/client"
require_relative "breaking_bad/quote"

module BreakingBad
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end

  def self.quote
    Quote.new.all
  end

  def self.find_by_author(author)
    Quote.new.find_by_author(author)
  end

  def self.find_by_series(series)
    Quote.new.find_by_series(series)
  end

  def self.find(id)
    Quote.new.find(id)
  end

  def self.random(author)
    Quote.new.random(author)
  end


end
