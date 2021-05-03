# OpenapiClient::CashbackObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A brief description of why this cashback was paid.  |  |
| **amount** | [**MoneyObject**](MoneyObject.md) | The total amount of cashback paid, represented as a positive value.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CashbackObject.new(
  description: null,
  amount: null
)
```

