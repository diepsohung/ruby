require_relative '../../../spec_helper'

ruby_version_is ''...'2.8' do
  require 'rexml/document'

  describe "REXML::Attributes#[]" do
    before :each do
      @e = REXML::Element.new("root")
      @lang = REXML::Attribute.new("language", "english")
      @e.attributes << @lang
    end

    it "returns the value of an attribute" do
      @e.attributes["language"].should == "english"
    end

    it "returns nil if the attribute does not exist" do
      @e.attributes["chunky bacon"].should == nil
    end
  end
end
