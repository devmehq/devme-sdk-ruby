=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'spec_helper'
require 'json'

# Unit tests for DevmeSdk::DomainApi

# Please update as you see appropriate
describe 'DomainApi' do
  before do
    # run before each test
    @api_instance = DevmeSdk::DomainApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DomainApi' do
    it 'should create an instance of DomainApi' do
      expect(@api_instance).to be_instance_of(DevmeSdk::DomainApi)
    end
  end

  # unit tests for v1_get_domain_whois
  # Get domain WHOIS details and registration information
  # @param [Hash] opts the optional parameters
  # @option opts [String] :domain domain - Domain name to get details for
  # @return [GetDomainWhoisOut]
  describe 'v1_get_domain_whois test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
