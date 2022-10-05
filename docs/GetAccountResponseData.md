# UpBankingClient::GetAccountResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of this resource: &#x60;accounts&#x60; |  |
| **id** | **String** | The unique identifier for this account.  |  |
| **attributes** | [**AccountResourceAttributes**](AccountResourceAttributes.md) |  |  |
| **relationships** | [**AccountResourceRelationships**](AccountResourceRelationships.md) |  |  |
| **links** | [**AccountResourceLinks**](AccountResourceLinks.md) |  | [optional] |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::GetAccountResponseData.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null,
  links: null
)
```

