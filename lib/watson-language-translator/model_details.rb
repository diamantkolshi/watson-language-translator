module WatsonLanguage
  class ModelDetails < ActiveMethod::Base
  	add_response_field :models
  	
    def self.fetch(options={})
      self.new(nil, options)
    end

    def endpoint
      "models/#{@options[:model_id]}"
    end
  end
end
