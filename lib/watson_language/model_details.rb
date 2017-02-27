module WatsonLanguage
  class ModelDetails < ActiveMethod::Base
    def endpoint
    	"models/#{@options[:model_id]}"
    end
  end
end
