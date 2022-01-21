=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'spec_helper'
require 'json'

# Unit tests for DevmeSdk::CountryApi

# Please update as you see appropriate
describe 'CountryApi' do
  before do
    # run before each test
    @api_instance = DevmeSdk::CountryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CountryApi' do
    it 'should create an instance of CountryApi' do
      expect(@api_instance).to be_instance_of(DevmeSdk::CountryApi)
    end
  end

  # unit tests for v1_get_country_details
  # Get country facts and information
  # @param code code - country code ISO 4217
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :expand expand - expand properties
  # @option opts [Array<String>] :exclude exclude - exclude properties
  # @option opts [String] :language language - localisation language
  # @return [GetCountryDetailsOut]
  describe 'v1_get_country_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_list_countries
  # Get list of all countries
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :code code - country code ISO 4217
  # @option opts [Array<String>] :expand expand - expand properties
  # @option opts [Array<String>] :exclude exclude - exclude properties
  # @option opts [String] :language language - localisation language
  # @option opts [Array<String>] :sort sort - sort properties
  # @option opts [String] :page page - page number
  # @option opts [String] :page_size pageSize - page size
  # @return [ListCountriesOut]
  describe 'v1_list_countries test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
