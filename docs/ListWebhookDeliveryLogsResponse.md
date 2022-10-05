# UpBankingClient::ListWebhookDeliveryLogsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;WebhookDeliveryLogResource&gt;**](WebhookDeliveryLogResource.md) | The list of delivery logs returned in this response.  |  |
| **links** | [**ListAccountsResponseLinks**](ListAccountsResponseLinks.md) |  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::ListWebhookDeliveryLogsResponse.new(
  data: null,
  links: null
)
```

