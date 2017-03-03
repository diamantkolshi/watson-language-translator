require 'spec_helper'

describe WatsonLanguage do
  let(:base_request_path) { "https://gateway.watsonplatform.net/language-translator/api/v2" }
  before(:each) do
    allow(ENV).to receive(:[]).with("language_translator_username").and_return("language_username")
    allow(ENV).to receive(:[]).with("langauge_translator_password").and_return("language_password")
  end

  describe ".username" do
    it "return env varibales" do
      expect(subject.username).to eq("language_username")
    end
  end

  describe ".password" do
    it "return env varibales" do
      expect(subject.password).to eq("language_password")
    end
  end

  describe ".base_url" do
    it "return base url for request" do
      expect(subject.base_url).to eq(base_request_path)
    end
  end
end
