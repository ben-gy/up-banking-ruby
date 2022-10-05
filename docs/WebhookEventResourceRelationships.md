# UpBankingClient::WebhookEventResourceRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook** | [**WebhookEventResourceRelationshipsWebhook**](WebhookEventResourceRelationshipsWebhook.md) |  |  |
| **transaction** | [**WebhookEventResourceRelationshipsTransaction**](WebhookEventResourceRelationshipsTransaction.md) |  | [optional] |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::WebhookEventResourceRelationships.new(
  webhook: null,
  transaction: null
)
```

