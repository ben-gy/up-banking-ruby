# UpBankingClient::UpdateTransactionCategoryRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;categories&#x60; |  |
| **id** | **String** | The unique identifier of the category, as returned by the &#x60;/categories&#x60; endpoint.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::UpdateTransactionCategoryRequestData.new(
  type: null,
  id: null
)
```

