# UpBankingClient::ListWebhooksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;WebhookResource&gt;**](WebhookResource.md) | The list of webhooks returned in this response.  |  |
| **links** | [**ListAccountsResponseLinks**](ListAccountsResponseLinks.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::ListWebhooksResponse.new(
  data: null,
  links: null
)
```

