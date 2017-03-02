require 'spec_helper'

describe WatsonLanguage::ListModels do
  include WatsonLanguage
  subject(:list_models) { described_class.fetch }

  before(:each) do
    allow(RestClient::Request).to receive("execute").and_return(json_response("list_models.json"))
  end

  describe "#add_response_field" do
    it "list_models class has method called models and return result from json_result" do
      is_expected.to respond_to(:models)
    end

    it "models method return hash from json_result['models']" do
      expect(list_models.models).to eq(list_models.json_result['models'])
    end
  end

  it_should_behave_like "operation_methods", "list_models" ,"models"

end