# UpBankingClient::WebhookInputResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL that this webhook should post events to. This must be a valid HTTP or HTTPS URL that does not exceed 300 characters in length.  |  |
| **description** | **String** | An optional description for this webhook, up to 64 characters in length.  | [optional] |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::WebhookInputResourceAttributes.new(
  url: null,
  description: null
)
```

