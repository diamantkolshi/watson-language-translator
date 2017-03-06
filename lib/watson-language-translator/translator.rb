module WatsonLanguage
  class Translator < ActiveMethod::Base
    add_response_field :translations
    add_response_field :word_count
    add_response_field :character_count

    def endpoint
      url = "translate"
      url << "?text=#{@text}"
      url << "&#{params_addressable}" unless params_addressable.empty?
      url
    end
  end
end
