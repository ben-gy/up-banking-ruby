# OpenapiClient::AccountResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The name associated with the account in the Up application.  |  |
| **account_type** | [**AccountTypeEnum**](AccountTypeEnum.md) | The bank account type of this account.  |  |
| **balance** | [**MoneyObject**](MoneyObject.md) | The available balance of the account, taking into account any amounts that are currently on hold.  |  |
| **created_at** | **Time** | The date-time at which this account was first opened.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AccountResourceAttributes.new(
  display_name: null,
  account_type: null,
  balance: null,
  created_at: null
)
```

