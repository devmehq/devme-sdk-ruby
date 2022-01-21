=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'spec_helper'
require 'json'

# Unit tests for DevmeSdk::IPApi

# Please update as you see appropriate
describe 'IPApi' do
  before do
    # run before each test
    DevmeSdk.configure do |config|
      config.api_key['APIKeyHeader'] = 'demo-key'
    end
    @api_instance = DevmeSdk::IPApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IPApi' do
    it 'should create an instance of IPApi' do
      expect(@api_instance).to be_instance_of(DevmeSdk::IPApi)
    end
  end

  # unit tests for v1_get_ip_details
  # Get IP GEO Location and ISP details
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ip ip - IP Address
  # @return [GetIpDetailsOut]
  describe 'v1_get_ip_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      result = @api_instance.v1_get_ip_details(opts = { ip: '52.45.23.11' })
      expect(result.ip).to eq('52.45.23.11')
      expect(result.country_code).to eq('US')
      expect(result.aso).to eq('AMAZON-AES')
    end
  end

end
