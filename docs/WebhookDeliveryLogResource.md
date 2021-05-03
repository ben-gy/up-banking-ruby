# OpenapiClient::WebhookDeliveryLogResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;webhook-delivery-logs&#x60; |  |
| **id** | **String** | The unique identifier for this log entry.  |  |
| **attributes** | [**WebhookDeliveryLogResourceAttributes**](WebhookDeliveryLogResourceAttributes.md) |  |  |
| **relationships** | [**WebhookDeliveryLogResourceRelationships**](WebhookDeliveryLogResourceRelationships.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookDeliveryLogResource.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```

