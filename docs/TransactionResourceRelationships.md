# OpenapiClient::TransactionResourceRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**TransactionResourceRelationshipsAccount**](TransactionResourceRelationshipsAccount.md) |  |  |
| **category** | [**CategoryResourceRelationshipsParent**](CategoryResourceRelationshipsParent.md) |  |  |
| **parent_category** | [**CategoryResourceRelationshipsParent**](CategoryResourceRelationshipsParent.md) |  |  |
| **tags** | [**TransactionResourceRelationshipsTags**](TransactionResourceRelationshipsTags.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionResourceRelationships.new(
  account: null,
  category: null,
  parent_category: null,
  tags: null
)
```

