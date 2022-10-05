=begin
#Up API

#The Up API gives you programmatic access to your balances and transaction data. You can request past transactions or set up webhooks to receive real-time events when new transactions hit your account. It’s new, it’s exciting and it’s just the beginning. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'cgi'

module UpBankingClient
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List accounts
    # Retrieve a paginated list of all accounts for the currently authenticated user. The returned list is paginated and can be scrolled by following the `prev` and `next` links where present. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records to return in each page. 
    # @option opts [AccountTypeEnum] :filter_account_type The type of account for which to return records. This can be used to filter Savers from spending accounts. 
    # @option opts [OwnershipTypeEnum] :filter_ownership_type The account ownership structure for which to return records. This can be used to filter 2Up accounts from Up accounts. 
    # @return [ListAccountsResponse]
    def accounts_get(opts = {})
      data, _status_code, _headers = accounts_get_with_http_info(opts)
      data
    end

    # List accounts
    # Retrieve a paginated list of all accounts for the currently authenticated user. The returned list is paginated and can be scrolled by following the &#x60;prev&#x60; and &#x60;next&#x60; links where present. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records to return in each page. 
    # @option opts [AccountTypeEnum] :filter_account_type The type of account for which to return records. This can be used to filter Savers from spending accounts. 
    # @option opts [OwnershipTypeEnum] :filter_ownership_type The account ownership structure for which to return records. This can be used to filter 2Up accounts from Up accounts. 
    # @return [Array<(ListAccountsResponse, Integer, Hash)>] ListAccountsResponse data, response status code and response headers
    def accounts_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.accounts_get ...'
      end
      # resource path
      local_var_path = '/accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'filter[accountType]'] = opts[:'filter_account_type'] if !opts[:'filter_account_type'].nil?
      query_params[:'filter[ownershipType]'] = opts[:'filter_ownership_type'] if !opts[:'filter_ownership_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListAccountsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"AccountsApi.accounts_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#accounts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve account
    # Retrieve a specific account by providing its unique identifier. 
    # @param id [String] The unique identifier for the account. 
    # @param [Hash] opts the optional parameters
    # @return [GetAccountResponse]
    def accounts_id_get(id, opts = {})
      data, _status_code, _headers = accounts_id_get_with_http_info(id, opts)
      data
    end

    # Retrieve account
    # Retrieve a specific account by providing its unique identifier. 
    # @param id [String] The unique identifier for the account. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccountResponse, Integer, Hash)>] GetAccountResponse data, response status code and response headers
    def accounts_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountsApi.accounts_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.accounts_id_get"
      end
      # resource path
      local_var_path = '/accounts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAccountResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"AccountsApi.accounts_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#accounts_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end