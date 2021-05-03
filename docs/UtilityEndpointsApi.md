# OpenapiClient::UtilityEndpointsApi

All URIs are relative to *https://api.up.com.au/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**util_ping_get**](UtilityEndpointsApi.md#util_ping_get) | **GET** /util/ping | Ping |


## util_ping_get

> <PingResponse> util_ping_get

Ping

Make a basic ping request to the API. This is useful to verify that authentication is functioning correctly. On authentication success an HTTP `200` status is returned. On failure an HTTP `401` error response is returned. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UtilityEndpointsApi.new

begin
  # Ping
  result = api_instance.util_ping_get
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UtilityEndpointsApi->util_ping_get: #{e}"
end
```

#### Using the util_ping_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PingResponse>, Integer, Hash)> util_ping_get_with_http_info

```ruby
begin
  # Ping
  data, status_code, headers = api_instance.util_ping_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PingResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UtilityEndpointsApi->util_ping_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PingResponse**](PingResponse.md)

### Authorization

[bearer_auth](../README.md#bearer_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

