# UpBankingClient::AccountResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The name associated with the account in the Up application.  |  |
| **account_type** | [**AccountTypeEnum**](AccountTypeEnum.md) | The bank account type of this account.  |  |
| **ownership_type** | [**OwnershipTypeEnum**](OwnershipTypeEnum.md) | The ownership structure for this account.  |  |
| **balance** | [**AccountResourceAttributesBalance**](AccountResourceAttributesBalance.md) |  |  |
| **created_at** | **Time** | The date-time at which this account was first opened.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::AccountResourceAttributes.new(
  display_name: null,
  account_type: null,
  ownership_type: null,
  balance: null,
  created_at: null
)
```

