require 'spec_helper'

describe WatsonLanguage::ModelDetails do
  include WatsonLanguage
  subject(:model_details) { described_class.fetch(model_id: "en-es") }

  before(:each) do
    allow(RestClient::Request).to receive("execute").and_return(json_response("model_details.json"))
  end

  describe "#add_response_field" do
    it "model_details class has method called models and return result from json_result" do
      is_expected.to respond_to(:models)
    end

    it "models method return hash from json_result['models']" do
      expect(model_details.models).to eq(model_details.json_result['models'])
    end
  end

  it_should_behave_like "operation_methods", "model_details" ,"models/en-es"

end
