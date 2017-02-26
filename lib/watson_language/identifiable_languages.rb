module WatsonLanguage
  class IdentifiableLanguages < ActiveMethod::Base
    add_response_field :languages

    def self.fetch
      self.new
    end

    def endpoint
      "identifiable_languages"
    end
  end
end
