# OpenapiClient::WebhookResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;webhooks&#x60; |  |
| **id** | **String** | The unique identifier for this webhook.  |  |
| **attributes** | [**WebhookResourceAttributes**](WebhookResourceAttributes.md) |  |  |
| **relationships** | [**WebhookResourceRelationships**](WebhookResourceRelationships.md) |  |  |
| **links** | [**AccountResourceLinks**](AccountResourceLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookResource.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null,
  links: null
)
```

