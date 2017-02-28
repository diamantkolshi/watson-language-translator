require 'spec_helper'
require "addressable/uri"

describe WatsonLanguage::Translator do
  include WatsonLanguage
  subject(:translator) { described_class.new("Hello", source: "en", target: "it") }

  before(:each) do
    allow(RestClient::Request).to receive("execute").and_return(json_response("translator.json"))
  end

  describe "#add_response_field" do
    it "translator class has method called translations and return result from json_result" do
      is_expected.to respond_to(:translations)
    end

    it "translations method return hash from json_result['translations']" do
      expect(translator.translations).to eq(translator.json_result['translations'])
    end

    it "translator class has method called word_count and return result from json_result" do
      is_expected.to respond_to(:word_count)
    end

    it "word_count method return hash from json_result['word_count']" do
      expect(translator.word_count).to eq(translator.json_result['word_count'])
    end

    it "translator class has method called character_count and return result from json_result" do
      is_expected.to respond_to(:character_count)
    end

    it "character_count method return hash from json_result['character_count']" do
      expect(translator.character_count).to eq(translator.json_result['character_count'])
    end
  end

  it_should_behave_like "operation_methods", "translator" ,"translate?text=Hello&source=en&target=it"
end
