# OpenapiClient::WebhookEventResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;webhook-events&#x60; |  |
| **id** | **String** | The unique identifier for this event. This will remain constant across delivery retries.  |  |
| **attributes** | [**WebhookEventResourceAttributes**](WebhookEventResourceAttributes.md) |  |  |
| **relationships** | [**WebhookEventResourceRelationships**](WebhookEventResourceRelationships.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookEventResource.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```

