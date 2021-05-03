# OpenapiClient::TransactionsApi

All URIs are relative to *https://api.up.com.au/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accounts_account_id_transactions_get**](TransactionsApi.md#accounts_account_id_transactions_get) | **GET** /accounts/{accountId}/transactions | List transactions by account |
| [**transactions_get**](TransactionsApi.md#transactions_get) | **GET** /transactions | List transactions |
| [**transactions_id_get**](TransactionsApi.md#transactions_id_get) | **GET** /transactions/{id} | Retrieve transaction |


## accounts_account_id_transactions_get

> <ListTransactionsResponse> accounts_account_id_transactions_get(account_id, opts)

List transactions by account

Retrieve a list of all transactions for a specific account. The returned list is [paginated](#pagination) and can be scrolled by following the `next` and `prev` links where present. To narrow the results to a specific date range pass one or both of `filter[since]` and `filter[until]` in the query string. These filter parameters **should not** be used for pagination. Results are ordered newest first to oldest last. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TransactionsApi.new
account_id = '86150b64-feaa-4186-a7e4-e84eae764602' # String | The unique identifier for the account. 
opts = {
  page_size: 30, # Integer | The number of records to return in each page. 
  filter_status: OpenapiClient::TransactionStatusEnum::HELD, # TransactionStatusEnum | The transaction status for which to return records. This can be used to filter `HELD` transactions from those that are `SETTLED`. 
  filter_since: Time.parse('2020-01-01T01:02:03+10:00'), # Time | The start date-time from which to return records, formatted according to rfc-3339. Not to be used for pagination purposes. 
  filter_until: Time.parse('2020-02-01T01:02:03+10:00'), # Time | The end date-time up to which to return records, formatted according to rfc-3339. Not to be used for pagination purposes. 
  filter_category: 'good-life', # String | The category identifier for which to filter transactions. Both parent and child categories can be filtered through this parameter. Providing an invalid category identifier results in a `404` response. 
  filter_tag: 'Holiday' # String | A transaction tag to filter for which to return records. If the tag does not exist, zero records are returned and a success response is given. 
}

begin
  # List transactions by account
  result = api_instance.accounts_account_id_transactions_get(account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->accounts_account_id_transactions_get: #{e}"
end
```

#### Using the accounts_account_id_transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransactionsResponse>, Integer, Hash)> accounts_account_id_transactions_get_with_http_info(account_id, opts)

```ruby
begin
  # List transactions by account
  data, status_code, headers = api_instance.accounts_account_id_transactions_get_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->accounts_account_id_transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The unique identifier for the account.  |  |
| **page_size** | **Integer** | The number of records to return in each page.  | [optional] |
| **filter_status** | [**TransactionStatusEnum**](.md) | The transaction status for which to return records. This can be used to filter &#x60;HELD&#x60; transactions from those that are &#x60;SETTLED&#x60;.  | [optional] |
| **filter_since** | **Time** | The start date-time from which to return records, formatted according to rfc-3339. Not to be used for pagination purposes.  | [optional] |
| **filter_until** | **Time** | The end date-time up to which to return records, formatted according to rfc-3339. Not to be used for pagination purposes.  | [optional] |
| **filter_category** | **String** | The category identifier for which to filter transactions. Both parent and child categories can be filtered through this parameter. Providing an invalid category identifier results in a &#x60;404&#x60; response.  | [optional] |
| **filter_tag** | **String** | A transaction tag to filter for which to return records. If the tag does not exist, zero records are returned and a success response is given.  | [optional] |

### Return type

[**ListTransactionsResponse**](ListTransactionsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_get

> <ListTransactionsResponse> transactions_get(opts)

List transactions

Retrieve a list of all transactions across all accounts for the currently authenticated user. The returned list is [paginated](#pagination) and can be scrolled by following the `next` and `prev` links where present. To narrow the results to a specific date range pass one or both of `filter[since]` and `filter[until]` in the query string. These filter parameters **should not** be used for pagination. Results are ordered newest first to oldest last. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TransactionsApi.new
opts = {
  page_size: 30, # Integer | The number of records to return in each page. 
  filter_status: OpenapiClient::TransactionStatusEnum::HELD, # TransactionStatusEnum | The transaction status for which to return records. This can be used to filter `HELD` transactions from those that are `SETTLED`. 
  filter_since: Time.parse('2020-01-01T01:02:03+10:00'), # Time | The start date-time from which to return records, formatted according to rfc-3339. Not to be used for pagination purposes. 
  filter_until: Time.parse('2020-02-01T01:02:03+10:00'), # Time | The end date-time up to which to return records, formatted according to rfc-3339. Not to be used for pagination purposes. 
  filter_category: 'good-life', # String | The category identifier for which to filter transactions. Both parent and child categories can be filtered through this parameter. Providing an invalid category identifier results in a `404` response. 
  filter_tag: 'Holiday' # String | A transaction tag to filter for which to return records. If the tag does not exist, zero records are returned and a success response is given. 
}

begin
  # List transactions
  result = api_instance.transactions_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_get: #{e}"
end
```

#### Using the transactions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransactionsResponse>, Integer, Hash)> transactions_get_with_http_info(opts)

```ruby
begin
  # List transactions
  data, status_code, headers = api_instance.transactions_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The number of records to return in each page.  | [optional] |
| **filter_status** | [**TransactionStatusEnum**](.md) | The transaction status for which to return records. This can be used to filter &#x60;HELD&#x60; transactions from those that are &#x60;SETTLED&#x60;.  | [optional] |
| **filter_since** | **Time** | The start date-time from which to return records, formatted according to rfc-3339. Not to be used for pagination purposes.  | [optional] |
| **filter_until** | **Time** | The end date-time up to which to return records, formatted according to rfc-3339. Not to be used for pagination purposes.  | [optional] |
| **filter_category** | **String** | The category identifier for which to filter transactions. Both parent and child categories can be filtered through this parameter. Providing an invalid category identifier results in a &#x60;404&#x60; response.  | [optional] |
| **filter_tag** | **String** | A transaction tag to filter for which to return records. If the tag does not exist, zero records are returned and a success response is given.  | [optional] |

### Return type

[**ListTransactionsResponse**](ListTransactionsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_id_get

> <GetTransactionResponse> transactions_id_get(id)

Retrieve transaction

Retrieve a specific transaction by providing its unique identifier. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TransactionsApi.new
id = '8e1da97e-6490-42eb-9c18-d8fdd94cfddc' # String | The unique identifier for the transaction. 

begin
  # Retrieve transaction
  result = api_instance.transactions_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_get: #{e}"
end
```

#### Using the transactions_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionResponse>, Integer, Hash)> transactions_id_get_with_http_info(id)

```ruby
begin
  # Retrieve transaction
  data, status_code, headers = api_instance.transactions_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the transaction.  |  |

### Return type

[**GetTransactionResponse**](GetTransactionResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

