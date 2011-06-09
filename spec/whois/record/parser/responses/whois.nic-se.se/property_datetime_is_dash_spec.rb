# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic-se.se/property_datetime_is_dash.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.nic-se.se.rb'

describe Whois::Record::Parser::WhoisNicSeSe, "property_datetime_is_dash.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic-se.se/property_datetime_is_dash.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2010-08-05")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should == nil
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2011-08-05")
    end
  end
end
