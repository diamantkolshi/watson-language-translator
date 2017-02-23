module WatsonLanguage
  class Translator < ActiveMethod::Base
    def endpoint
      url = "translate"
      url << "&#{params_addressable}" unless params_addressable.empty?
      url
    end
  end
end
