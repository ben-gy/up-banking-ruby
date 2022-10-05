# UpBankingClient::WebhooksApi

All URIs are relative to *https://api.up.com.au/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhooks_get**](WebhooksApi.md#webhooks_get) | **GET** /webhooks | List webhooks |
| [**webhooks_id_delete**](WebhooksApi.md#webhooks_id_delete) | **DELETE** /webhooks/{id} | Delete webhook |
| [**webhooks_id_get**](WebhooksApi.md#webhooks_id_get) | **GET** /webhooks/{id} | Retrieve webhook |
| [**webhooks_post**](WebhooksApi.md#webhooks_post) | **POST** /webhooks | Create webhook |
| [**webhooks_webhook_id_logs_get**](WebhooksApi.md#webhooks_webhook_id_logs_get) | **GET** /webhooks/{webhookId}/logs | List webhook logs |
| [**webhooks_webhook_id_ping_post**](WebhooksApi.md#webhooks_webhook_id_ping_post) | **POST** /webhooks/{webhookId}/ping | Ping webhook |


## webhooks_get

> <ListWebhooksResponse> webhooks_get(opts)

List webhooks

Retrieve a list of configured webhooks. The returned list is [paginated](#pagination) and can be scrolled by following the `next` and `prev` links where present. Results are ordered oldest first to newest last. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::WebhooksApi.new
opts = {
  page_size: 30 # Integer | The number of records to return in each page. 
}

begin
  # List webhooks
  result = api_instance.webhooks_get(opts)
  p result
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_get: #{e}"
end
```

#### Using the webhooks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhooksResponse>, Integer, Hash)> webhooks_get_with_http_info(opts)

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.webhooks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhooksResponse>
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_size** | **Integer** | The number of records to return in each page.  | [optional] |

### Return type

[**ListWebhooksResponse**](ListWebhooksResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhooks_id_delete

> webhooks_id_delete(id)

Delete webhook

Delete a specific webhook by providing its unique identifier. Once deleted, webhook events will no longer be sent to the configured URL. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::WebhooksApi.new
id = 'a940825b-80b6-4798-b378-c6284259b4c5' # String | The unique identifier for the webhook. 

begin
  # Delete webhook
  api_instance.webhooks_id_delete(id)
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_id_delete: #{e}"
end
```

#### Using the webhooks_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhooks_id_delete_with_http_info(id)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.webhooks_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the webhook.  |  |

### Return type

nil (empty response body)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## webhooks_id_get

> <GetWebhookResponse> webhooks_id_get(id)

Retrieve webhook

Retrieve a specific webhook by providing its unique identifier. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::WebhooksApi.new
id = 'c8283a72-24b0-4fd8-9b13-fccccab371e5' # String | The unique identifier for the webhook. 

begin
  # Retrieve webhook
  result = api_instance.webhooks_id_get(id)
  p result
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_id_get: #{e}"
end
```

#### Using the webhooks_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhookResponse>, Integer, Hash)> webhooks_id_get_with_http_info(id)

```ruby
begin
  # Retrieve webhook
  data, status_code, headers = api_instance.webhooks_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhookResponse>
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the webhook.  |  |

### Return type

[**GetWebhookResponse**](GetWebhookResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhooks_post

> <CreateWebhookResponse> webhooks_post(opts)

Create webhook

Create a new webhook with a given URL. The URL will receive webhook events as JSON-encoded `POST` requests. The URL must respond with a HTTP `200` status on success.  There is currently a limit of 10 webhooks at any given time. Once this limit is reached, existing webhooks will need to be deleted before new webhooks can be created.  Event delivery is retried with exponential backoff if the URL is unreachable or it does not respond with a `200` status. The response includes a `secretKey` attribute, which is used to sign requests sent to the webhook URL. It will not be returned from any other endpoints within the Up API. If the `secretKey` is lost, simply create a new webhook with the same URL, capture its `secretKey` and then delete the original webhook. See [Handling webhook events](#callback_post_webhookURL) for details on how to process webhook events.  It is probably a good idea to test the webhook by [sending it a `PING` event](#post_webhooks_webhookId_ping) after creating it. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::WebhooksApi.new
opts = {
  create_webhook_request: UpBankingClient::CreateWebhookRequest.new({data: UpBankingClient::CreateWebhookRequestData.new({attributes: UpBankingClient::WebhookInputResourceAttributes.new({url: 'url_example'})})}) # CreateWebhookRequest | 
}

begin
  # Create webhook
  result = api_instance.webhooks_post(opts)
  p result
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_post: #{e}"
end
```

#### Using the webhooks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWebhookResponse>, Integer, Hash)> webhooks_post_with_http_info(opts)

```ruby
begin
  # Create webhook
  data, status_code, headers = api_instance.webhooks_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWebhookResponse>
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_request** | [**CreateWebhookRequest**](CreateWebhookRequest.md) |  | [optional] |

### Return type

[**CreateWebhookResponse**](CreateWebhookResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## webhooks_webhook_id_logs_get

> <ListWebhookDeliveryLogsResponse> webhooks_webhook_id_logs_get(webhook_id, opts)

List webhook logs

Retrieve a list of delivery logs for a webhook by providing its unique identifier. This is useful for analysis and debugging purposes. The returned list is [paginated](#pagination) and can be scrolled by following the `next` and `prev` links where present. Results are ordered newest first to oldest last. Logs may be automatically purged after a period of time. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::WebhooksApi.new
webhook_id = '7104f5df-4993-495f-9d29-2b4d062c03a9' # String | The unique identifier for the webhook. 
opts = {
  page_size: 30 # Integer | The number of records to return in each page. 
}

begin
  # List webhook logs
  result = api_instance.webhooks_webhook_id_logs_get(webhook_id, opts)
  p result
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_webhook_id_logs_get: #{e}"
end
```

#### Using the webhooks_webhook_id_logs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhookDeliveryLogsResponse>, Integer, Hash)> webhooks_webhook_id_logs_get_with_http_info(webhook_id, opts)

```ruby
begin
  # List webhook logs
  data, status_code, headers = api_instance.webhooks_webhook_id_logs_get_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhookDeliveryLogsResponse>
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_webhook_id_logs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | The unique identifier for the webhook.  |  |
| **page_size** | **Integer** | The number of records to return in each page.  | [optional] |

### Return type

[**ListWebhookDeliveryLogsResponse**](ListWebhookDeliveryLogsResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhooks_webhook_id_ping_post

> <WebhookEventCallback> webhooks_webhook_id_ping_post(webhook_id)

Ping webhook

Send a `PING` event to a webhook by providing its unique identifier. This is useful for testing and debugging purposes. The event is delivered asynchronously and its data is returned in the response to this request. 

### Examples

```ruby
require 'time'
require 'up_banking'
# setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::WebhooksApi.new
webhook_id = '830e127d-fb89-4400-92bb-f3f48289dcba' # String | The unique identifier for the webhook. 

begin
  # Ping webhook
  result = api_instance.webhooks_webhook_id_ping_post(webhook_id)
  p result
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_webhook_id_ping_post: #{e}"
end
```

#### Using the webhooks_webhook_id_ping_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEventCallback>, Integer, Hash)> webhooks_webhook_id_ping_post_with_http_info(webhook_id)

```ruby
begin
  # Ping webhook
  data, status_code, headers = api_instance.webhooks_webhook_id_ping_post_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEventCallback>
rescue UpBankingClient::ApiError => e
  puts "Error when calling WebhooksApi->webhooks_webhook_id_ping_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | The unique identifier for the webhook.  |  |

### Return type

[**WebhookEventCallback**](WebhookEventCallback.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

