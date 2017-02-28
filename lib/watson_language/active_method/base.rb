module WatsonLanguage
  module ActiveMethod
    class Base < ActiveMethod::Extra
      include WatsonLanguage::Generators::LanguageRequest
      attr_accessor :text, :username, :password, :json_result, :options, :http_method

      def initialize(text = nil, options={})
        @text = text
        @username = WatsonLanguage.username
        @password = WatsonLanguage.password
        @options = options
        @http_method = fetch_http_method
        @json_result = request
      end

      def request
        json_parser(endpoint)
      end

      def params_addressable
        uri = Addressable::URI.new
        uri.query_values = @options
        uri.query
      end

      def fetch_http_method
        if @options[:http_method]
          result = options[:http_method]
          @options.delete(:http_method)
        else
          result = "get"
        end
        return result.to_sym
      end
    end
  end
end
