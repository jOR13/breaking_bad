# frozen_string_literal: true

module BreakingBad
  class Character < MethodsRequest
    # Request characters by category, like 'Breaking Bad' or 'Better Call Saul'.
    def find_by_category(category)
      client.get("#{endpoint_name}?category=#{category}")
    end

    def find_with_limit(limit)
      client.get("#{endpoint_name}?limit=#{limit}")
    end

    def find_by_name(name)
      client.get("#{endpoint_name}?name=#{name}")
    end
  end
end
