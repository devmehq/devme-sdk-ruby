# DEV.ME SDK for Ruby

[![Build Status](https://github.com/devmehq/devme-sdk-ruby/actions/workflows/ci.yml/badge.svg)](https://github.com/devmehq/devme-sdk-ruby/actions/workflows/ci.yml)
[![Gem Version](https://img.shields.io/gem/v/devme-sdk-ruby)](https://rubygems.org/gems/devme-sdk-ruby)
[![Downloads](https://img.shields.io/gem/dt/devme-sdk-ruby)](https://rubygems.org/gems/devme-sdk-ruby)

DEV.ME SDK for Ruby

> Compatible with Ruby on Rails

## Get Your Free API Key

[Signup Here](https://dev.me/signup) and Get Your Free API Key

## Installation and usage instructions

## Installation

Install the module through GEM:

```shell
gem install devme-sdk-ruby
```

Or GEMFILE:

```shell
gem "devme-sdk-ruby", "~> 1.0"
```

## Examples

### Currency API Conversion

```ruby
require 'devme-sdk-ruby'
DevmeSdk.configure do |config|
  config.api_key['APIKeyHeader'] = 'demo-key'
end
@api_instance = DevmeSdk::CurrencyApi.new
result = @api_instance.v1_convert_currency(from = 'USD', to = 'EUR', opts = { amount: 10 })
# puts result
# {
#   convertedAmount: 8.819,
#   convertedText: '10 USD equal to 8.819 EUR',
#   exchangeRate: 0.8819,
#   from: 'USD',
#   originalAmount: 10,
#   rateTime: '2022-01-20T14:49:28.046Z',
#   to: 'EUR'
# }
```

### IP API Geolocation, IP2Location, IP Data

```ruby
require 'devme-sdk-ruby'
DevmeSdk.configure do |config|
  config.api_key['APIKeyHeader'] = 'demo-key'
end
@api_instance = DevmeSdk::IPApi.new
result = @api_instance.v1_get_ip_details(opts = { ip: '52.45.23.11' })

# {
#   asn: 14618,
#   aso: 'AMAZON-AES',
#   city: {
#   accuracyRadius: 1000,
#     latitude: 39.0469,
#     longitude: -77.4903,
#     metroCode: 511,
#     name: 'Ashburn',
#     timeZone: 'America/New_York',
#   },
#   countryCode: 'US',
#   ip: '52.45.23.11',
#   registeredCountryCode: 'US',
# }

```

## Testing

```shell
bundle exec rake
```

## Need Help?

If you need help please drop us a message, we would be glad to help @ [Contact us](http://dev.me/contact-us)

## Contributing

Please feel free to open an issue or create a pull request and fix bugs or add features, All contributions are welcome.
Thank you!

## LICENSE [MIT](LICENSE.md)
