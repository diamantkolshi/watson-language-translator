require 'spec_helper'

describe WatsonLanguage::ActiveMethod::Extra do
  subject(:extra) { WatsonLanguage::ActiveMethod::Extra }

  it "has self method that it called add_response_field" do
    is_expected.to respond_to(:add_response_field)
  end

  describe "define dynamic methods" do
    subject(:instance_extra) { extra.new }

    it "define methods dinamix with define response field method" do
      is_expected.not_to respond_to(:test_method)

      extra.add_response_field :test_method

      is_expected.to respond_to(:test_method)
    end
  end
end