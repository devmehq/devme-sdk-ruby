=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'cgi'

module DevmeSdk
  class IPApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get IP GEO Location and ISP details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ip ip - IP Address
    # @return [GetIpDetailsOut]
    def v1_get_ip_details(opts = {})
      data, _status_code, _headers = v1_get_ip_details_with_http_info(opts)
      data
    end

    # Get IP GEO Location and ISP details
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ip ip - IP Address
    # @return [Array<(GetIpDetailsOut, Integer, Hash)>] GetIpDetailsOut data, response status code and response headers
    def v1_get_ip_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IPApi.v1_get_ip_details ...'
      end
      # resource path
      local_var_path = '/v1-get-ip-details'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ip'] = opts[:'ip'] if !opts[:'ip'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetIpDetailsOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['APIKeyHeader', 'APIKeyQueryParam']

      new_options = opts.merge(
        :operation => :"IPApi.v1_get_ip_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IPApi#v1_get_ip_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
