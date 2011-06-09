# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.cl/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.cl.rb'

describe Whois::Record::Parser::WhoisNicCl, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.cl/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      lambda { @parser.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns3.google.com"
      @parser.nameservers[0].ipv4.should == "216.239.36.10"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns4.google.com"
      @parser.nameservers[1].ipv4.should == "216.239.38.10"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns1.google.com"
      @parser.nameservers[2].ipv4.should == "216.239.32.10"
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].name.should == "ns2.google.com"
      @parser.nameservers[3].ipv4.should == "216.239.34.10"
    end
  end
end
