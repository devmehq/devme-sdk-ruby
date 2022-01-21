=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

# Common files
require 'devme-sdk-ruby/api_client'
require 'devme-sdk-ruby/api_error'
require 'devme-sdk-ruby/version'
require 'devme-sdk-ruby/configuration'

# Models
require 'devme-sdk-ruby/models/convert_currency_out'
require 'devme-sdk-ruby/models/error'
require 'devme-sdk-ruby/models/get_country_details_out'
require 'devme-sdk-ruby/models/get_currency_details_out'
require 'devme-sdk-ruby/models/get_currency_exchange_rate_out'
require 'devme-sdk-ruby/models/get_domain_whois_out'
require 'devme-sdk-ruby/models/get_email_details_out'
require 'devme-sdk-ruby/models/get_ip_details_city_out'
require 'devme-sdk-ruby/models/get_ip_details_out'
require 'devme-sdk-ruby/models/get_phone_details_out'
require 'devme-sdk-ruby/models/http_error_out'
require 'devme-sdk-ruby/models/list_countries_item'
require 'devme-sdk-ruby/models/list_countries_out'
require 'devme-sdk-ruby/models/list_currencies_item'
require 'devme-sdk-ruby/models/list_currencies_out'
require 'devme-sdk-ruby/models/who_am_i_out'

# APIs
require 'devme-sdk-ruby/api/country_api'
require 'devme-sdk-ruby/api/currency_api'
require 'devme-sdk-ruby/api/domain_api'
require 'devme-sdk-ruby/api/email_api'
require 'devme-sdk-ruby/api/ip_api'
require 'devme-sdk-ruby/api/phone_api'
require 'devme-sdk-ruby/api/utils_api'

module DevmeSdk
  class << self
    # Customize default settings for the SDK using block.
    #   DevmeSdk.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
