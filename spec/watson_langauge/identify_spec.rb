require 'spec_helper'

describe WatsonLanguage::Identify do
  include WatsonLanguage
  subject(:identify) { described_class.new(text: "this is at est") }

  before(:each) do
    allow(RestClient::Request).to receive("execute").and_return(json_response("identify.json"))
  end

  describe "#add_response_field" do
    it "identify class has method called languages and return result from json_result" do
      is_expected.to respond_to(:languages)
    end

    it "languages method return hash from json_result['languages']" do
      expect(identify.languages).to eq(identify.json_result['languages'])
    end
  end
end
