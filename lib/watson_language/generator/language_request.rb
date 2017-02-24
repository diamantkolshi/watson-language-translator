module WatsonLanguage
  module Generators
    module LanguageRequest
      def base_url_request
        "#{WatsonLanguage.base_url}"
      end

      def rest_client_api(request_api_url)
        RestClient::Request.execute(
          method: :get,
          url: request_api_url,
          user: @username,
          password: @password,
          :headers => {:accept => :json}
        )
      end

      def json_parser(url)
        JSON.parse(rest_client_api(base_url_request + "/" + url))
      end
    end
  end
end
