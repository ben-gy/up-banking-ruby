# UpBankingClient::HoldInfoObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**HoldInfoObjectAmount**](HoldInfoObjectAmount.md) |  |  |
| **foreign_amount** | [**HoldInfoObjectForeignAmount**](HoldInfoObjectForeignAmount.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::HoldInfoObject.new(
  amount: null,
  foreign_amount: null
)
```

