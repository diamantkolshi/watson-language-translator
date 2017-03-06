require 'rest-client'
require 'json'
require "addressable/uri"

module WatsonLanguage
  class << self
    def base_url
      "https://gateway.watsonplatform.net/language-translator/api/v2"
    end

    def username
      ENV['language_translator_username']
    end

    def password
      ENV['langauge_translator_password']
    end
  end
end

require_relative "watson-language-translator/generator/language_request.rb"
require_relative "watson-language-translator/active_method/extra.rb"
require_relative "watson-language-translator/active_method/base.rb"
require_relative "watson-language-translator/translator.rb"
require_relative "watson-language-translator/identifiable_languages.rb"
require_relative "watson-language-translator/identify.rb"
require_relative "watson-language-translator/list_models.rb"
require_relative "watson-language-translator/model_details.rb"
require_relative "watson-language-translator/model.rb"