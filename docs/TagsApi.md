# OpenapiClient::TagsApi

All URIs are relative to *https://api.up.com.au/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tags_get**](TagsApi.md#tags_get) | **GET** /tags | List tags |
| [**transactions_transaction_id_relationships_tags_delete**](TagsApi.md#transactions_transaction_id_relationships_tags_delete) | **DELETE** /transactions/{transactionId}/relationships/tags | Remove tags from transaction |
| [**transactions_transaction_id_relationships_tags_post**](TagsApi.md#transactions_transaction_id_relationships_tags_post) | **POST** /transactions/{transactionId}/relationships/tags | Add tags to transaction |


## tags_get

> <ListTagsResponse> tags_get(opts)

List tags

Retrieve a list of all tags currently in use. The returned list is [paginated](#pagination) and can be scrolled by following the `next` and `prev` links where present. Results are ordered lexicographically. The `transactions` relationship for each tag exposes a link to get the transactions with the given tag. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TagsApi.new
opts = {
  page_size: 50 # Integer | The number of records to return in each page. 
}

begin
  # List tags
  result = api_instance.tags_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagsApi->tags_get: #{e}"
end
```

#### Using the tags_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTagsResponse>, Integer, Hash)> tags_get_with_http_info(opts)

```ruby
begin
  # List tags
  data, status_code, headers = api_instance.tags_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTagsResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagsApi->tags_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The number of records to return in each page.  | [optional] |

### Return type

[**ListTagsResponse**](ListTagsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_transaction_id_relationships_tags_delete

> transactions_transaction_id_relationships_tags_delete(transaction_id, opts)

Remove tags from transaction

Disassociates one or more tags from a specific transaction. Tags that are not associated are silently ignored. An HTTP `204` is returned on success. The associated tags, along with this request URL, are also exposed via the `tags` relationship on the transaction resource returned from `/transactions/{id}`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TagsApi.new
transaction_id = 'd8c190d6-be35-4d64-b2c4-e1aa0c09a0e0' # String | The unique identifier for the transaction. 
opts = {
  update_transaction_tags_request: OpenapiClient::UpdateTransactionTagsRequest.new({data: [OpenapiClient::TagInputResourceIdentifier.new({type: 'type_example', id: 'id_example'})]}) # UpdateTransactionTagsRequest | 
}

begin
  # Remove tags from transaction
  api_instance.transactions_transaction_id_relationships_tags_delete(transaction_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagsApi->transactions_transaction_id_relationships_tags_delete: #{e}"
end
```

#### Using the transactions_transaction_id_relationships_tags_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transactions_transaction_id_relationships_tags_delete_with_http_info(transaction_id, opts)

```ruby
begin
  # Remove tags from transaction
  data, status_code, headers = api_instance.transactions_transaction_id_relationships_tags_delete_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagsApi->transactions_transaction_id_relationships_tags_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The unique identifier for the transaction.  |  |
| **update_transaction_tags_request** | [**UpdateTransactionTagsRequest**](UpdateTransactionTagsRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## transactions_transaction_id_relationships_tags_post

> transactions_transaction_id_relationships_tags_post(transaction_id, opts)

Add tags to transaction

Associates one or more tags with a specific transaction. No more than 6 tags may be present on any single transaction. Duplicate tags are silently ignored. An HTTP `204` is returned on success. The associated tags, along with this request URL, are also exposed via the `tags` relationship on the transaction resource returned from `/transactions/{id}`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TagsApi.new
transaction_id = 'd024c1b8-bc6a-4785-afc6-cd332d2a2efb' # String | The unique identifier for the transaction. 
opts = {
  update_transaction_tags_request: OpenapiClient::UpdateTransactionTagsRequest.new({data: [OpenapiClient::TagInputResourceIdentifier.new({type: 'type_example', id: 'id_example'})]}) # UpdateTransactionTagsRequest | 
}

begin
  # Add tags to transaction
  api_instance.transactions_transaction_id_relationships_tags_post(transaction_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagsApi->transactions_transaction_id_relationships_tags_post: #{e}"
end
```

#### Using the transactions_transaction_id_relationships_tags_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transactions_transaction_id_relationships_tags_post_with_http_info(transaction_id, opts)

```ruby
begin
  # Add tags to transaction
  data, status_code, headers = api_instance.transactions_transaction_id_relationships_tags_post_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagsApi->transactions_transaction_id_relationships_tags_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The unique identifier for the transaction.  |  |
| **update_transaction_tags_request** | [**UpdateTransactionTagsRequest**](UpdateTransactionTagsRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

