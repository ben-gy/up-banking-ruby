# UpBankingClient::TransactionResourceAttributesHoldInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**HoldInfoObjectAmount**](HoldInfoObjectAmount.md) |  |  |
| **foreign_amount** | [**HoldInfoObjectForeignAmount**](HoldInfoObjectForeignAmount.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::TransactionResourceAttributesHoldInfo.new(
  amount: null,
  foreign_amount: null
)
```

