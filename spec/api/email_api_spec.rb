=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'spec_helper'
require 'json'

# Unit tests for DevmeSdk::EmailApi

# Please update as you see appropriate
describe 'EmailApi' do
  before do
    # run before each test
    @api_instance = DevmeSdk::EmailApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailApi' do
    it 'should create an instance of EmailApi' do
      expect(@api_instance).to be_instance_of(DevmeSdk::EmailApi)
    end
  end

  # unit tests for v1_get_email_details
  # Get email validation details
  # @param email email - email address
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :verify_mx verifyMx - verify domain dns for MX record
  # @option opts [Boolean] :verify_smtp verifySmtp - verify mailbox with SMTP Connect and Reply
  # @return [GetEmailDetailsOut]
  describe 'v1_get_email_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
