=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'spec_helper'
require 'json'

# Unit tests for DevmeSdk::CurrencyApi

# Please update as you see appropriate
describe 'CurrencyApi' do
  before do
    # run before each test
    DevmeSdk.configure do |config|
      config.api_key['APIKeyHeader'] = 'demo-key'
    end
    @api_instance = DevmeSdk::CurrencyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CurrencyApi' do
    it 'should create an instance of CurrencyApi' do
      expect(@api_instance).to be_instance_of(DevmeSdk::CurrencyApi)
    end
  end

  # unit tests for v1_convert_currency
  # Convert currency to another currency
  # @param from from - currency to convert from
  # @param to to - currency to convert to
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :amount amount - amount to convert
  # @return [ConvertCurrencyOut]
  describe 'v1_convert_currency test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      result = @api_instance.v1_convert_currency(from = 'USD', to = 'EUR', opts = { amount: 10 })
      expect(result).to be_instance_of(DevmeSdk::ConvertCurrencyOut)
      expect(result.to).to eq('EUR')
      expect(result.from).to eq('USD')
      expect(result.converted_amount).to be_within(1).of(8.0)
    end
  end

  # unit tests for v1_get_currency_details
  # Get currency facts and information
  # @param code code - currency code ISO 4217
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :expand expand - expand properties
  # @option opts [Array<String>] :exclude exclude - exclude properties
  # @option opts [String] :language language - localisation language
  # @option opts [String] :type type - type of currency
  # @return [GetCurrencyDetailsOut]
  describe 'v1_get_currency_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_get_currency_exchange_rate
  # Get exchange rate for a currency
  # @param from from - currency to get exchange rate from
  # @param to to - currency to get exchange rate to
  # @param [Hash] opts the optional parameters
  # @return [GetCurrencyExchangeRateOut]
  describe 'v1_get_currency_exchange_rate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_list_currencies
  # Get list of all currencies
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :code code - currency code ISO 4217
  # @option opts [Array<String>] :expand expand - expand properties
  # @option opts [Array<String>] :exclude exclude - exclude properties
  # @option opts [String] :language language - localisation language
  # @option opts [String] :type type - type of currency
  # @option opts [Array<String>] :sort sort - sort properties
  # @option opts [String] :page page - page number
  # @option opts [String] :page_size pageSize - page size
  # @return [ListCurrenciesOut]
  describe 'v1_list_currencies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
