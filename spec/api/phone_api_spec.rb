=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'spec_helper'
require 'json'

# Unit tests for DevmeSdk::PhoneApi

# Please update as you see appropriate
describe 'PhoneApi' do
  before do
    # run before each test
    @api_instance = DevmeSdk::PhoneApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PhoneApi' do
    it 'should create an instance of PhoneApi' do
      expect(@api_instance).to be_instance_of(DevmeSdk::PhoneApi)
    end
  end

  # unit tests for v1_get_phone_details
  # Get phone validation details
  # @param phone phone - phone number to validate
  # @param [Hash] opts the optional parameters
  # @return [GetPhoneDetailsOut]
  describe 'v1_get_phone_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
