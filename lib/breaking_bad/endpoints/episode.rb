# frozen_string_literal: true

module BreakingBad
  class Episode < MethodsRequest
    # Request characters by category, like 'Breaking Bad' or 'Better Call Saul'.
    def find_by_series(series)
      threads = []
      threads << Thread.new { client.get("#{endpoint_name("s")}?series=#{series}") }
      threads.map(&:value)
    end
  end
end
