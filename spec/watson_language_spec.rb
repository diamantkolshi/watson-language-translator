require 'spec_helper'

describe WatsonLanguage do
	let(:base_request_path) { "https://gateway.watsonplatform.net/language-translator/api/v2" }
	before(:each) do 
		allow(ENV).to receive(:[]).with("username").and_return("language_username")
    allow(ENV).to receive(:[]).with("password").and_return("language_password")
	end

	describe ".autherize" do
		it "return env varibales" do
			expect(subject.autherize).to eq("{language_username}:{language_password}")
		end
	end

	describe ".base_url" do 
		it "return base url for request" do 
			expect(subject.base_url).to eq(base_request_path)
		end
	end
end
