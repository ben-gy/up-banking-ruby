# OpenapiClient::TransactionResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;transactions&#x60; |  |
| **id** | **String** | The unique identifier for this transaction.  |  |
| **attributes** | [**TransactionResourceAttributes**](TransactionResourceAttributes.md) |  |  |
| **relationships** | [**TransactionResourceRelationships**](TransactionResourceRelationships.md) |  |  |
| **links** | [**AccountResourceLinks**](AccountResourceLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionResource.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null,
  links: null
)
```

