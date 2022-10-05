# UpBankingClient::CategoryResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;categories&#x60; |  |
| **id** | **String** | The unique identifier for this category. This is a human-readable but URL-safe value.  |  |
| **attributes** | [**CategoryResourceAttributes**](CategoryResourceAttributes.md) |  |  |
| **relationships** | [**CategoryResourceRelationships**](CategoryResourceRelationships.md) |  |  |
| **links** | [**AccountResourceLinks**](AccountResourceLinks.md) |  | [optional] |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::CategoryResource.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null,
  links: null
)
```

