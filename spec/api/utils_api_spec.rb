=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'spec_helper'
require 'json'

# Unit tests for DevmeSdk::UtilsApi

# Please update as you see appropriate
describe 'UtilsApi' do
  before do
    # run before each test
    @api_instance = DevmeSdk::UtilsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UtilsApi' do
    it 'should create an instance of UtilsApi' do
      expect(@api_instance).to be_instance_of(DevmeSdk::UtilsApi)
    end
  end

  # unit tests for v1_who_am_i
  # Get current user details with api key
  # @param [Hash] opts the optional parameters
  # @return [WhoAmIOut]
  describe 'v1_who_am_i test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
