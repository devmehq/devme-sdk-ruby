require 'rubygems'
require 'bundler/setup'

require 'devme-sdk-ruby'
require 'colorize'
require 'rainbow'

puts Rainbow('This will be printed in red').red
puts "Hello, world!".colorize(:red)

DevmeSdk.configure do |config|
  config.api_key['APIKeyHeader'] = 'demo-key'
end
@api_instance = DevmeSdk::CurrencyApi.new
result = @api_instance.v1_convert_currency(from = 'USD', to = 'EUR', opts = { amount: 10 })
puts result

@api_instance = DevmeSdk::IPApi.new
result = @api_instance.v1_get_ip_details(opts = { ip: '52.45.23.11' })
puts result
