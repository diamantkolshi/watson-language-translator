module WatsonLanguage
  module Generators
    module LanguageRequest
      def base_url_request
        "#{WatsonLanguage.base_url}"
      end

      def rest_client_api(request_api)
      end

      def json_parser(url)
      end
    end
  end
end
