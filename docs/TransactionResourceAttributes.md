# UpBankingClient::TransactionResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**TransactionStatusEnum**](TransactionStatusEnum.md) | The current processing status of this transaction, according to whether or not this transaction has settled or is still held.  |  |
| **raw_text** | **String** | The original, unprocessed text of the transaction. This is often not a perfect indicator of the actual merchant, but it is useful for reconciliation purposes in some cases.  |  |
| **description** | **String** | A short description for this transaction. Usually the merchant name for purchases.  |  |
| **message** | **String** | Attached message for this transaction, such as a payment message, or a transfer note.  |  |
| **is_categorizable** | **Boolean** | Boolean flag set to true on transactions that support the use of categories.  |  |
| **hold_info** | [**TransactionResourceAttributesHoldInfo**](TransactionResourceAttributesHoldInfo.md) |  |  |
| **round_up** | [**TransactionResourceAttributesRoundUp**](TransactionResourceAttributesRoundUp.md) |  |  |
| **cashback** | [**TransactionResourceAttributesCashback**](TransactionResourceAttributesCashback.md) |  |  |
| **amount** | [**TransactionResourceAttributesAmount**](TransactionResourceAttributesAmount.md) |  |  |
| **foreign_amount** | [**TransactionResourceAttributesForeignAmount**](TransactionResourceAttributesForeignAmount.md) |  |  |
| **settled_at** | **Time** | The date-time at which this transaction settled. This field will be &#x60;null&#x60; for transactions that are currently in the &#x60;HELD&#x60; status.  |  |
| **created_at** | **Time** | The date-time at which this transaction was first encountered.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::TransactionResourceAttributes.new(
  status: null,
  raw_text: null,
  description: null,
  message: null,
  is_categorizable: null,
  hold_info: null,
  round_up: null,
  cashback: null,
  amount: null,
  foreign_amount: null,
  settled_at: null,
  created_at: null
)
```

