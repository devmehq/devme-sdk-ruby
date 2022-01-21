# DEV.ME SDK for Ruby
[![Build Status](https://github.com/devmehq/devme-sdk-ruby/actions/workflows/ci.yml/badge.svg)](https://github.com/devmehq/devme-sdk-ruby/actions/workflows/ci.yml)
[![Gem Version](https://img.shields.io/gem/v/devme-sdk-ruby.svg)](https://rubygems.org/gems/devme-sdk-ruby)
[![Downloads](https://img.shields.io/gem/dm/devme-sdk-ruby.svg)](https://rubygems.org/gems/devme-sdk-ruby)

DEV.ME SDK for Ruby

> Compatible with Ruby on Rails

## Get Your Free API Key
[Signup Here](https://dev.me/signup) and Get Your Free API Key

## Installation and usage instructions

## Installation
Install the module through YARN:
```yarn
gem install devme-sdk-ruby
```

## Examples

### Currency API Conversion
```ruby


// {
//   convertedAmount: 8.819,
//   convertedText: '10 USD equal to 8.819 EUR',
//   exchangeRate: 0.8819,
//   from: 'USD',
//   originalAmount: 10,
//   rateTime: '2022-01-20T14:49:28.046Z',
//   to: 'EUR'
// }
```

### IP API Geolocation, IP2Location, IP Data
```ruby

// {
//   asn: 14618,
//   aso: 'AMAZON-AES',
//   city: {
//   accuracyRadius: 1000,
//     latitude: 39.0469,
//     longitude: -77.4903,
//     metroCode: 511,
//     name: 'Ashburn',
//     timeZone: 'America/New_York',
//   },
//   countryCode: 'US',
//   ip: '52.45.23.11',
//   registeredCountryCode: 'US',
// }

```

## Testing
```shell
bundle exec rake
```

## Need Help?
If you need help please drop us a message, we would be glad to help @ [Contact us](http://dev.me/contact-us)


## Contributing
Please feel free to open an issue or create a pull request and fix bugs or add features, All contributions are welcome. Thank you!

## LICENSE [MIT](LICENSE.md)
