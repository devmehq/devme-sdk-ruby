=begin
#DEV.ME API Documentation

#DEV.ME API Documentation [Currency Conversion and Exchange Rates API](https://dev.me/products/currency) - [IP2Location, IP Country, IP Information API](https://dev.me/products/ip) -  [Email Validation, Mailbox Verification](https://dev.me/products/email) - [Phone Number Validation](https://dev.me/products/phone). You can learn more at [dev.me](https://dev.me). For this example you can use api key `demo-key` to test the APIs

The version of the OpenAPI document: 1.0.0
Contact: support@dev.me



=end

require 'cgi'

module DevmeSdk
  class EmailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get email validation details
    # @param email [String] email - email address
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :verify_mx verifyMx - verify domain dns for MX record
    # @option opts [Boolean] :verify_smtp verifySmtp - verify mailbox with SMTP Connect and Reply
    # @return [GetEmailDetailsOut]
    def v1_get_email_details(email, opts = {})
      data, _status_code, _headers = v1_get_email_details_with_http_info(email, opts)
      data
    end

    # Get email validation details
    # @param email [String] email - email address
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :verify_mx verifyMx - verify domain dns for MX record
    # @option opts [Boolean] :verify_smtp verifySmtp - verify mailbox with SMTP Connect and Reply
    # @return [Array<(GetEmailDetailsOut, Integer, Hash)>] GetEmailDetailsOut data, response status code and response headers
    def v1_get_email_details_with_http_info(email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailApi.v1_get_email_details ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling EmailApi.v1_get_email_details"
      end
      # resource path
      local_var_path = '/v1-get-email-details'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = email
      query_params[:'verifyMx'] = opts[:'verify_mx'] if !opts[:'verify_mx'].nil?
      query_params[:'verifySmtp'] = opts[:'verify_smtp'] if !opts[:'verify_smtp'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetEmailDetailsOut'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['APIKeyHeader', 'APIKeyQueryParam']

      new_options = opts.merge(
        :operation => :"EmailApi.v1_get_email_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailApi#v1_get_email_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
