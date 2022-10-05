# UpBankingClient::ListTransactionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;TransactionResource&gt;**](TransactionResource.md) | The list of transactions returned in this response.  |  |
| **links** | [**ListAccountsResponseLinks**](ListAccountsResponseLinks.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::ListTransactionsResponse.new(
  data: null,
  links: null
)
```

