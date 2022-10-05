# UpBankingClient::CategoriesApi

All URIs are relative to *https://api.up.com.au/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**categories_get**](CategoriesApi.md#categories_get) | **GET** /categories | List categories |
| [**categories_id_get**](CategoriesApi.md#categories_id_get) | **GET** /categories/{id} | Retrieve category |
| [**transactions_transaction_id_relationships_category_patch**](CategoriesApi.md#transactions_transaction_id_relationships_category_patch) | **PATCH** /transactions/{transactionId}/relationships/category | Categorize transaction |


## categories_get

> <ListCategoriesResponse> categories_get(opts)

List categories

Retrieve a list of all categories and their ancestry. The returned list is not paginated. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::CategoriesApi.new
opts = {
  filter_parent: 'good-life' # String | The unique identifier of a parent category for which to return only its children. Providing an invalid category identifier results in a `404` response. 
}

begin
  # List categories
  result = api_instance.categories_get(opts)
  p result
rescue UpBankingClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_get: #{e}"
end
```

#### Using the categories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCategoriesResponse>, Integer, Hash)> categories_get_with_http_info(opts)

```ruby
begin
  # List categories
  data, status_code, headers = api_instance.categories_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCategoriesResponse>
rescue UpBankingClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_parent** | **String** | The unique identifier of a parent category for which to return only its children. Providing an invalid category identifier results in a &#x60;404&#x60; response.  | [optional] |

### Return type

[**ListCategoriesResponse**](ListCategoriesResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## categories_id_get

> <GetCategoryResponse> categories_id_get(id)

Retrieve category

Retrieve a specific category by providing its unique identifier. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::CategoriesApi.new
id = 'restaurants-and-cafes' # String | The unique identifier for the category. 

begin
  # Retrieve category
  result = api_instance.categories_id_get(id)
  p result
rescue UpBankingClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_get: #{e}"
end
```

#### Using the categories_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCategoryResponse>, Integer, Hash)> categories_id_get_with_http_info(id)

```ruby
begin
  # Retrieve category
  data, status_code, headers = api_instance.categories_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCategoryResponse>
rescue UpBankingClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the category.  |  |

### Return type

[**GetCategoryResponse**](GetCategoryResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_transaction_id_relationships_category_patch

> transactions_transaction_id_relationships_category_patch(transaction_id, opts)

Categorize transaction

Updates the category associated with a transaction. Only transactions for which `isCategorizable` is set to true support this operation. The `id` is taken from the list exposed on `/categories` and cannot be one of the top-level (parent) categories. To de-categorize a transaction, set the entire `data` key to `null`. An HTTP `204` is returned on success. The associated category, along with its request URL is also exposed via the `category` relationship on the transaction resource returned from `/transactions/{id}`. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::CategoriesApi.new
transaction_id = 'a572c7c3-b637-433c-a4ce-c0be5dcb0a5a' # String | The unique identifier for the transaction. 
opts = {
  update_transaction_category_request: UpBankingClient::UpdateTransactionCategoryRequest.new({data: UpBankingClient::UpdateTransactionCategoryRequestData.new({type: 'type_example', id: 'id_example'})}) # UpdateTransactionCategoryRequest | 
}

begin
  # Categorize transaction
  api_instance.transactions_transaction_id_relationships_category_patch(transaction_id, opts)
rescue UpBankingClient::ApiError => e
  puts "Error when calling CategoriesApi->transactions_transaction_id_relationships_category_patch: #{e}"
end
```

#### Using the transactions_transaction_id_relationships_category_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> transactions_transaction_id_relationships_category_patch_with_http_info(transaction_id, opts)

```ruby
begin
  # Categorize transaction
  data, status_code, headers = api_instance.transactions_transaction_id_relationships_category_patch_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue UpBankingClient::ApiError => e
  puts "Error when calling CategoriesApi->transactions_transaction_id_relationships_category_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | The unique identifier for the transaction.  |  |
| **update_transaction_category_request** | [**UpdateTransactionCategoryRequest**](UpdateTransactionCategoryRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

