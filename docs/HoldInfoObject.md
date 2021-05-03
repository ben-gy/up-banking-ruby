# OpenapiClient::HoldInfoObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**MoneyObject**](MoneyObject.md) | The amount of this transaction while in the &#x60;HELD&#x60; status, in Australian dollars.  |  |
| **foreign_amount** | [**MoneyObject**](MoneyObject.md) | The foreign currency amount of this transaction while in the &#x60;HELD&#x60; status. This field will be &#x60;null&#x60; for domestic transactions. The amount was converted to the AUD amount reflected in the &#x60;amount&#x60; field.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::HoldInfoObject.new(
  amount: null,
  foreign_amount: null
)
```

