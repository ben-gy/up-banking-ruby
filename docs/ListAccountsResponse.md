# UpBankingClient::ListAccountsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AccountResource&gt;**](AccountResource.md) | The list of accounts returned in this response.  |  |
| **links** | [**ListAccountsResponseLinks**](ListAccountsResponseLinks.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::ListAccountsResponse.new(
  data: null,
  links: null
)
```

