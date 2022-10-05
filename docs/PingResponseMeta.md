# UpBankingClient::PingResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the authenticated customer.  |  |
| **status_emoji** | **String** | A cute emoji that represents the response status.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::PingResponseMeta.new(
  id: null,
  status_emoji: null
)
```

