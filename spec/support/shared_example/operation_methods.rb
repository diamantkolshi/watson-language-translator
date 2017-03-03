RSpec.shared_examples "operation_methods" do |model_name, endpoint|
  describe "#endpoint" do
    it "get end point with auth_token and path" do
      expect(eval("#{model_name}").endpoint).to eq(endpoint)
    end
  end

  describe "#result" do
    it "return all result after request with author url" do
      expect(eval("#{model_name}").result).to eq(json_response("#{model_name}.json", json_parse: true))
    end
  end
end
