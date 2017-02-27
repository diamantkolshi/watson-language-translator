module WatsonLanguage
  class ListModels < ActiveMethod::Base
    add_response_field :models

    def endpoint
      "models"
    end
  end
end
