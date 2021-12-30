# frozen_string_literal: true

module BreakingBad
  class Quote < MethodsRequest
    def find_by_author(author)
      client.get("#{endpoint_name}?author=#{author}")
    end

    def find_by_series(series)
      client.get("#{endpoint_name}?series=#{series}")
    end
  end
end
