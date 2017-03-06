module WatsonLanguage
  class Model < ActiveMethod::Base
    add_response_field :model_id
    add_response_field :deleted

    def self.create(options={})
      self.new(nil, options)
    end

    def self.delete(options={})
      self.new(nil, options)
    end

    def endpoint
      return url = "models/#{@options[:model_id]}" if @options[:model_id]
      url = "models"      
      url << "&#{params_addressable}" unless params_addressable.empty?
      url
    end
  end
end
