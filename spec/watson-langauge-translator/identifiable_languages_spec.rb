require 'spec_helper'

describe WatsonLanguage::IdentifiableLanguages do
  include WatsonLanguage
  subject(:identifiable_languages) { described_class.fetch }

  before(:each) do
    allow(RestClient::Request).to receive("execute").and_return(json_response("identifiable_languages.json"))
  end

  describe "#add_response_field" do
    it "identifiable_languages class has method called languages and return result from json_result" do
      is_expected.to respond_to(:languages)
    end

    it "languages method return hash from json_result['languages']" do
      expect(identifiable_languages.languages).to eq(identifiable_languages.json_result['languages'])
    end
  end

  it_should_behave_like "operation_methods", "identifiable_languages" ,"identifiable_languages"
  
end
