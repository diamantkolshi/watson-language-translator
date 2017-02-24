require 'spec_helper'

describe WatsonLanguage do
	let(:base_request_path) { "https://gateway.watsonplatform.net/language-translator/api/v2" }
	before(:each) do 
		allow(ENV).to receive(:[]).with("username").and_return("language_username")
    allow(ENV).to receive(:[]).with("password").and_return("language_password")
	end

	describe ".username" do
		it "return env varibales" do
			expect(subject.username).to eq("4d123cdf-cd4d-4e52-8e9f-032ddd21958b")
		end
	end

	describe ".password" do
		it "return env varibales" do
			expect(subject.password).to eq("GiYMXcMbIgiz")
		end
	end

	describe ".base_url" do 
		it "return base url for request" do 
			expect(subject.base_url).to eq(base_request_path)
		end
	end
end
