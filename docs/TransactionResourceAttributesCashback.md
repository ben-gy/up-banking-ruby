# UpBankingClient::TransactionResourceAttributesCashback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A brief description of why this cashback was paid.  |  |
| **amount** | [**CashbackObjectAmount**](CashbackObjectAmount.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::TransactionResourceAttributesCashback.new(
  description: null,
  amount: null
)
```

