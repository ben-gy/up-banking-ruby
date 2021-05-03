# OpenapiClient::AccountsApi

All URIs are relative to *https://api.up.com.au/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accounts_get**](AccountsApi.md#accounts_get) | **GET** /accounts | List accounts |
| [**accounts_id_get**](AccountsApi.md#accounts_id_get) | **GET** /accounts/{id} | Retrieve account |


## accounts_get

> <ListAccountsResponse> accounts_get(opts)

List accounts

Retrieve a paginated list of all accounts for the currently authenticated user. The returned list is paginated and can be scrolled by following the `prev` and `next` links where present. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AccountsApi.new
opts = {
  page_size: 30 # Integer | The number of records to return in each page. 
}

begin
  # List accounts
  result = api_instance.accounts_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_get: #{e}"
end
```

#### Using the accounts_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountsResponse>, Integer, Hash)> accounts_get_with_http_info(opts)

```ruby
begin
  # List accounts
  data, status_code, headers = api_instance.accounts_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The number of records to return in each page.  | [optional] |

### Return type

[**ListAccountsResponse**](ListAccountsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## accounts_id_get

> <GetAccountResponse> accounts_id_get(id)

Retrieve account

Retrieve a specific account by providing its unique identifier. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AccountsApi.new
id = '9842e43e-a1f9-4460-a252-364c86df2d3e' # String | The unique identifier for the account. 

begin
  # Retrieve account
  result = api_instance.accounts_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_get: #{e}"
end
```

#### Using the accounts_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountResponse>, Integer, Hash)> accounts_id_get_with_http_info(id)

```ruby
begin
  # Retrieve account
  data, status_code, headers = api_instance.accounts_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the account.  |  |

### Return type

[**GetAccountResponse**](GetAccountResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

