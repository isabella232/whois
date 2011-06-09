# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registry.in/property_status_multiple.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.registry.in.rb'

describe Whois::Record::Parser::WhoisRegistryIn, "property_status_multiple.expected" do

  before(:each) do
    file = fixture("responses", "whois.registry.in/property_status_multiple.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == [ "client delete prohibited", "client renew prohibited", "client transfer prohibited", "client update prohibited" ]
    end
  end
end
