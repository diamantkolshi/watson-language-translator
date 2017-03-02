module WatsonLanguage
  class ListModels < ActiveMethod::Base
    add_response_field :models

    def self.fetch
      self.new
    end

    def endpoint
      "models"
    end
  end
end
