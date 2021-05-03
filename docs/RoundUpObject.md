# OpenapiClient::RoundUpObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | [**MoneyObject**](MoneyObject.md) | The total amount of this Round Up, including any boosts, represented as a negative value.  |  |
| **boost_portion** | [**MoneyObject**](MoneyObject.md) | The portion of the Round Up &#x60;amount&#x60; owing to boosted Round Ups, represented as a negative value. If no boost was added to the Round Up this field will be &#x60;null&#x60;.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RoundUpObject.new(
  amount: null,
  boost_portion: null
)
```

