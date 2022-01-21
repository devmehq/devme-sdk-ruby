=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'cgi'

module DevmeSdk
  class CurrencyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Convert currency to another currency
    # @param from [String] from - currency to convert from
    # @param to [String] to - currency to convert to
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount amount - amount to convert
    # @return [ConvertCurrencyOut]
    def v1_convert_currency(from, to, opts = {})
      data, _status_code, _headers = v1_convert_currency_with_http_info(from, to, opts)
      data
    end

    # Convert currency to another currency
    # @param from [String] from - currency to convert from
    # @param to [String] to - currency to convert to
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :amount amount - amount to convert
    # @return [Array<(ConvertCurrencyOut, Integer, Hash)>] ConvertCurrencyOut data, response status code and response headers
    def v1_convert_currency_with_http_info(from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyApi.v1_convert_currency ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling CurrencyApi.v1_convert_currency"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling CurrencyApi.v1_convert_currency"
      end
      # resource path
      local_var_path = '/v1-convert-currency'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = to
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ConvertCurrencyOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['APIKeyHeader', 'APIKeyQueryParam']

      new_options = opts.merge(
        :operation => :"CurrencyApi.v1_convert_currency",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyApi#v1_convert_currency\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get currency facts and information
    # @param code [String] code - currency code ISO 4217
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand expand - expand properties
    # @option opts [Array<String>] :exclude exclude - exclude properties
    # @option opts [String] :language language - localisation language
    # @option opts [String] :type type - type of currency
    # @return [GetCurrencyDetailsOut]
    def v1_get_currency_details(code, opts = {})
      data, _status_code, _headers = v1_get_currency_details_with_http_info(code, opts)
      data
    end

    # Get currency facts and information
    # @param code [String] code - currency code ISO 4217
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :expand expand - expand properties
    # @option opts [Array<String>] :exclude exclude - exclude properties
    # @option opts [String] :language language - localisation language
    # @option opts [String] :type type - type of currency
    # @return [Array<(GetCurrencyDetailsOut, Integer, Hash)>] GetCurrencyDetailsOut data, response status code and response headers
    def v1_get_currency_details_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyApi.v1_get_currency_details ...'
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling CurrencyApi.v1_get_currency_details"
      end
      allowable_values = ["en", "ar", "de", "es", "fr", "ja", "ko", "pt", "ru"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      allowable_values = ["fiat", "crypto"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1-get-currency-details'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'code'] = code
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?
      query_params[:'exclude'] = @api_client.build_collection_param(opts[:'exclude'], :multi) if !opts[:'exclude'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCurrencyDetailsOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['APIKeyHeader', 'APIKeyQueryParam']

      new_options = opts.merge(
        :operation => :"CurrencyApi.v1_get_currency_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyApi#v1_get_currency_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get exchange rate for a currency
    # @param from [String] from - currency to get exchange rate from
    # @param to [String] to - currency to get exchange rate to
    # @param [Hash] opts the optional parameters
    # @return [GetCurrencyExchangeRateOut]
    def v1_get_currency_exchange_rate(from, to, opts = {})
      data, _status_code, _headers = v1_get_currency_exchange_rate_with_http_info(from, to, opts)
      data
    end

    # Get exchange rate for a currency
    # @param from [String] from - currency to get exchange rate from
    # @param to [String] to - currency to get exchange rate to
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCurrencyExchangeRateOut, Integer, Hash)>] GetCurrencyExchangeRateOut data, response status code and response headers
    def v1_get_currency_exchange_rate_with_http_info(from, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyApi.v1_get_currency_exchange_rate ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling CurrencyApi.v1_get_currency_exchange_rate"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling CurrencyApi.v1_get_currency_exchange_rate"
      end
      # resource path
      local_var_path = '/v1-get-currency-exchange-rate'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = to

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCurrencyExchangeRateOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['APIKeyHeader', 'APIKeyQueryParam']

      new_options = opts.merge(
        :operation => :"CurrencyApi.v1_get_currency_exchange_rate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyApi#v1_get_currency_exchange_rate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def v1_list_currencies(opts = {})
      data, _status_code, _headers = v1_list_currencies_with_http_info(opts)
      data
    end

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
    # @return [Array<(ListCurrenciesOut, Integer, Hash)>] ListCurrenciesOut data, response status code and response headers
    def v1_list_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrencyApi.v1_list_currencies ...'
      end
      allowable_values = ["en", "ar", "de", "es", "fr", "ja", "ko", "pt", "ru"]
      if @api_client.config.client_side_validation && opts[:'language'] && !allowable_values.include?(opts[:'language'])
        fail ArgumentError, "invalid value for \"language\", must be one of #{allowable_values}"
      end
      allowable_values = ["fiat", "crypto"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1-list-currencies'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'code'] = @api_client.build_collection_param(opts[:'code'], :multi) if !opts[:'code'].nil?
      query_params[:'expand'] = @api_client.build_collection_param(opts[:'expand'], :multi) if !opts[:'expand'].nil?
      query_params[:'exclude'] = @api_client.build_collection_param(opts[:'exclude'], :multi) if !opts[:'exclude'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListCurrenciesOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['APIKeyHeader', 'APIKeyQueryParam']

      new_options = opts.merge(
        :operation => :"CurrencyApi.v1_list_currencies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrencyApi#v1_list_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
