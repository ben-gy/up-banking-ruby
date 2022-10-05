# UpBankingClient::ListAccountsResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prev** | **String** | The link to the previous page in the results. If this value is &#x60;null&#x60; there is no previous page.  |  |
| **_next** | **String** | The link to the next page in the results. If this value is &#x60;null&#x60; there is no next page.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::ListAccountsResponseLinks.new(
  prev: null,
  _next: null
)
```

