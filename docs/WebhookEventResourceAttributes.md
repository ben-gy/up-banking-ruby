# UpBankingClient::WebhookEventResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_type** | [**WebhookEventTypeEnum**](WebhookEventTypeEnum.md) | The type of this event. This can be used to determine what action to take in response to the event.  |  |
| **created_at** | **Time** | The date-time at which this event was generated.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::WebhookEventResourceAttributes.new(
  event_type: null,
  created_at: null
)
```

