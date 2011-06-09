# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.eu/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.eu.rb'

describe Whois::Record::Parser::WhoisEu, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.eu/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "dns1.servicemagic.eu"
      @parser.nameservers[0].ipv4.should == "91.121.133.61"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "dns2.servicemagic.eu"
      @parser.nameservers[1].ipv4.should == "91.121.103.77"
    end
  end
end
