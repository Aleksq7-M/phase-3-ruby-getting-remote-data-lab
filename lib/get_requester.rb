# Write your code here

require 'net/http'
require 'open-uri'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(self.url)
        Net::HTTP.get_response(uri).body
    end

    def parse_json
        body = self.get_response_body
        JSON.parse(body)
    end
end
