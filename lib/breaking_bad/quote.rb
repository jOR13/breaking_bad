# frozen_string_literal: true
module BreakingBad
    class Quote
      def initialize
        @client = Client.new("https://www.breakingbadapi.com/api/")
      end

      def all
        client.get(endpoint_name("s"))
      end

      def find_by_author(author)
        client.get("#{endpoint_name}?author=#{author}")
      end

      def find_by_series(series)
        client.get("#{endpoint_name}?seires=#{series}")
      end
  
      def find(id)
        client.get("#{endpoint_name}/#{id}")
      end

      def random(*author)
        client.get("#{endpoint_name("s")}/random/#{author}")
      end

    private
    attr_reader :client
    def endpoint_name(*plural)
      @endpoint_name ||= self.class.name.split("::")[-1].downcase+plural.join
    end
  
    end
  end
  