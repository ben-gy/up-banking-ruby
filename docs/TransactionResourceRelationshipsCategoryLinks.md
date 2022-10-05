# UpBankingClient::TransactionResourceRelationshipsCategoryLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | **String** | The link to retrieve or modify linkage between this resources and the related resource(s) in this relationship.  |  |
| **related** | **String** | The link to retrieve the related resource(s) in this relationship.  | [optional] |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::TransactionResourceRelationshipsCategoryLinks.new(
  _self: null,
  related: null
)
```

