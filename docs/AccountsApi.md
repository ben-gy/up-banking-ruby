# UpBankingClient::AccountsApi

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
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::AccountsApi.new
opts = {
  page_size: 30, # Integer | The number of records to return in each page. 
  filter_account_type: UpBankingClient::AccountTypeEnum::SAVER, # AccountTypeEnum | The type of account for which to return records. This can be used to filter Savers from spending accounts. 
  filter_ownership_type: UpBankingClient::OwnershipTypeEnum::INDIVIDUAL # OwnershipTypeEnum | The account ownership structure for which to return records. This can be used to filter 2Up accounts from Up accounts. 
}

begin
  # List accounts
  result = api_instance.accounts_get(opts)
  p result
rescue UpBankingClient::ApiError => e
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
rescue UpBankingClient::ApiError => e
  puts "Error when calling AccountsApi->accounts_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The number of records to return in each page.  | [optional] |
| **filter_account_type** | [**AccountTypeEnum**](.md) | The type of account for which to return records. This can be used to filter Savers from spending accounts.  | [optional] |
| **filter_ownership_type** | [**OwnershipTypeEnum**](.md) | The account ownership structure for which to return records. This can be used to filter 2Up accounts from Up accounts.  | [optional] |

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
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::AccountsApi.new
id = '92b41408-6b7b-4fca-982b-3fb1fdd77220' # String | The unique identifier for the account. 

begin
  # Retrieve account
  result = api_instance.accounts_id_get(id)
  p result
rescue UpBankingClient::ApiError => e
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
rescue UpBankingClient::ApiError => e
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

