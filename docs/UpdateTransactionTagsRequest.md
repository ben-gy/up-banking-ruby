# UpBankingClient::UpdateTransactionTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;TagInputResourceIdentifier&gt;**](TagInputResourceIdentifier.md) | The tags to add to or remove from the transaction.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::UpdateTransactionTagsRequest.new(
  data: null
)
```

