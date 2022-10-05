# UpBankingClient::WebhookDeliveryLogResourceAttributesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status_code** | **Integer** | The HTTP status code received in the response.  |  |
| **body** | **String** | The payload that was received in the response body.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::WebhookDeliveryLogResourceAttributesResponse.new(
  status_code: null,
  body: null
)
```

