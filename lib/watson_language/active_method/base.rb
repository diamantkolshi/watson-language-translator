module WatsonLanguage
  module ActiveMethod
    class Base < ActiveMethod::Extra
      include WatsonLanguage::Generators::LanguageRequest
      attr_accessor :text, :username, :password, :json_result, :options

      def initialize(text = nil, options={})
        @text = text
        @username = WatsonLanguage.username
        @password = WatsonLanguage.password
        @options = options
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
    end
  end
end
