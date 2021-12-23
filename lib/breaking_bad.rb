# frozen_string_literal: true

require_relative "breaking_bad/version"
require_relative "breaking_bad/client"

module BreakingBad
  class Error < StandardError; end

  def self.quotes
    [{}]
  end
end
