# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.crsnic.net/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.crsnic.net.rb'

describe Whois::Record::Parser::WhoisCrsnicNet, "status_available.expected" do

  before(:each) do
    file = fixture("responses", "whois.crsnic.net/status_available.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "TERMS OF USE: You are not authorized to access or query our Whois database through the use of electronic processes that are high-volume and automated except as reasonably necessary to register domain names or modify existing registrations; the Data in VeriSign Global Registry Services' (\"VeriSign\") Whois database is provided by VeriSign for information purposes only, and to assist persons in obtaining information about or related to a domain name registration record. VeriSign does not guarantee its accuracy. By submitting a Whois query, you agree to abide by the following terms of use: You agree that you may use this Data only for lawful purposes and that under no circumstances will you use this Data to: (1) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via e-mail, telephone, or facsimile; or (2) enable high volume, automated, electronic processes that apply to VeriSign (or its computer systems). The compilation, repackaging, dissemination or other use of this Data is expressly prohibited without the prior written consent of VeriSign. You agree not to use electronic processes that are automated and high-volume to access or query the Whois database except as reasonably necessary to register domain names or modify existing registrations. VeriSign reserves the right to restrict your access to the Whois database in its sole discretion to ensure operational stability.  VeriSign may restrict or terminate your access to the Whois database for failure to abide by these terms of use. VeriSign reserves the right to modify these terms at any time."
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "googlelkjhgfdfghjklkjhgf.net"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_whois" do
    it do
      @parser.referral_whois.should == nil
    end
  end
  describe "#referral_url" do
    it do
      @parser.referral_url.should == nil
    end
  end
  describe "#status" do
    it do
      @parser.status.should == nil
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == true
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == false
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should == nil
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should == nil
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should == nil
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should == nil
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should == []
    end
  end
end
