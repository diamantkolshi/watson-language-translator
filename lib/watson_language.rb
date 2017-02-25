require 'rest-client'
require 'json'
require "addressable/uri"

module WatsonLanguage
  class << self
    def base_url
      "https://gateway.watsonplatform.net/language-translator/api/v2"
    end

    def username
    	# ENV['username']
      "4d123cdf-cd4d-4e52-8e9f-032ddd21958b"
    end

    def password
    	# ENV['password']  
      "GiYMXcMbIgiz"
    end
  end
end

require_relative "watson_language/generator/language_request.rb"
require_relative "watson_language/active_method/extra.rb"
require_relative "watson_language/active_method/base.rb"
require_relative "watson_language/translator.rb"
require_relative "watson_language/identifiable_languages.rb"
require_relative "watson_language/identify.rb"
require_relative "watson_language/list_models.rb"
require_relative "watson_language/model_details.rb"

# obj = WatsonLanguage::Translator.new("helo", target: "it", source: "en")
# puts obj.result