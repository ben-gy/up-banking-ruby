# OpenapiClient::TagResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;tags&#x60; |  |
| **id** | **String** | The label of the tag, which also acts as the tag’s unique identifier.  |  |
| **relationships** | [**AccountResourceRelationships**](AccountResourceRelationships.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TagResource.new(
  type: null,
  id: null,
  relationships: null
)
```

