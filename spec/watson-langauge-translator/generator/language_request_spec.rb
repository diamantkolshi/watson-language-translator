require 'spec_helper'

describe WatsonLanguage::Generators::LanguageRequest do
  include WatsonLanguage
  include described_class

  describe "#base_url_request" do
    it "base url should be equal from alchemy language main module" do
      expect(base_url_request).to eq(WatsonLanguage.base_url)
    end
  end

  describe "request methods" do
    before(:each) do
      allow(RestClient::Request).to receive("execute").and_return(json_response("translator.json"))
    end

    describe "#rest_client_api" do
      it "return http request translator" do
        expect(rest_client_api("url")).to eq(json_response("translator.json"))
      end
    end

    describe "#json_parser" do
      it "return http request translator" do
        expect(json_parser("url")).to eq(json_response("translator.json", json_parse: true))
      end
    end
  end
end
