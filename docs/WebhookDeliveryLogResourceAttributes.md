# UpBankingClient::WebhookDeliveryLogResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**WebhookDeliveryLogResourceAttributesRequest**](WebhookDeliveryLogResourceAttributesRequest.md) |  |  |
| **response** | [**WebhookDeliveryLogResourceAttributesResponse**](WebhookDeliveryLogResourceAttributesResponse.md) |  |  |
| **delivery_status** | [**WebhookDeliveryStatusEnum**](WebhookDeliveryStatusEnum.md) | The success or failure status of this delivery attempt.  |  |
| **created_at** | **Time** | The date-time at which this log entry was created.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::WebhookDeliveryLogResourceAttributes.new(
  request: null,
  response: null,
  delivery_status: null,
  created_at: null
)
```

