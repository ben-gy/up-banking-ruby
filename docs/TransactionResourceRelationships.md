# UpBankingClient::TransactionResourceRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**TransactionResourceRelationshipsAccount**](TransactionResourceRelationshipsAccount.md) |  |  |
| **transfer_account** | [**TransactionResourceRelationshipsTransferAccount**](TransactionResourceRelationshipsTransferAccount.md) |  |  |
| **category** | [**TransactionResourceRelationshipsCategory**](TransactionResourceRelationshipsCategory.md) |  |  |
| **parent_category** | [**CategoryResourceRelationshipsParent**](CategoryResourceRelationshipsParent.md) |  |  |
| **tags** | [**TransactionResourceRelationshipsTags**](TransactionResourceRelationshipsTags.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::TransactionResourceRelationships.new(
  account: null,
  transfer_account: null,
  category: null,
  parent_category: null,
  tags: null
)
```

