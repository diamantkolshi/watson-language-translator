module WatsonLanguage
  class Identify < ActiveMethod::Base
    add_response_field :languages

    def endpoint
      url = "identify"
      url << "?text=#{@text}"
    end
  end
end
