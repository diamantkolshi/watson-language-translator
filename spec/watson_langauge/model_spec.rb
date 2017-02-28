require 'spec_helper'

describe WatsonLanguage::Model do
  include WatsonLanguage

  describe "create model" do
    subject(:create_model) { described_class.create(http_method: "post", base_model_id: 'en-es', name: 'custom-english-to-spanish') }

    before(:each) do
      allow(RestClient::Request).to receive("execute").and_return(json_response("create_model.json"))
    end

    describe "#add_response_field" do
      it "create_model class has method called model_id and return result from json_result" do
        is_expected.to respond_to(:model_id)
      end

      it "model_id method return hash from json_result['model_id']" do
        expect(create_model.model_id).to eq(create_model.json_result['model_id'])
      end
    end
  end

  describe "delete model" do
    subject(:delete_model) { described_class.delete(http_method: "delete") }

    before(:each) do
      allow(RestClient::Request).to receive("execute").and_return(json_response("delete_model.json"))
    end

    describe "#add_response_field" do
      it "delete_model class has method called deleted and return result from json_result" do
        is_expected.to respond_to(:deleted)
      end

      it "deleted method return hash from json_result['deleted']" do
        expect(delete_model.deleted).to eq(delete_model.json_result['deleted'])
      end
    end
  end
end
