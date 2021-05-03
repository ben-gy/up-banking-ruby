# OpenapiClient::TransactionResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**TransactionStatusEnum**](TransactionStatusEnum.md) | The current processing status of this transaction, according to whether or not this transaction has settled or is still held.  |  |
| **raw_text** | **String** | The original, unprocessed text of the transaction. This is often not a perfect indicator of the actual merchant, but it is useful for reconciliation purposes in some cases.  |  |
| **description** | **String** | A short description for this transaction. Usually the merchant name for purchases.  |  |
| **message** | **String** | Attached message for this transaction, such as a payment message, or a transfer note.  |  |
| **hold_info** | [**HoldInfoObject**](HoldInfoObject.md) | If this transaction is currently in the &#x60;HELD&#x60; status, or was ever in the &#x60;HELD&#x60; status, the &#x60;amount&#x60; and &#x60;foreignAmount&#x60; of the transaction while &#x60;HELD&#x60;.  |  |
| **round_up** | [**RoundUpObject**](RoundUpObject.md) | Details of how this transaction was rounded-up. If no Round Up was applied this field will be &#x60;null&#x60;.  |  |
| **cashback** | [**CashbackObject**](CashbackObject.md) | If all or part of this transaction was instantly reimbursed in the form of cashback, details of the reimbursement.  |  |
| **amount** | [**MoneyObject**](MoneyObject.md) | The amount of this transaction in Australian dollars. For transactions that were once &#x60;HELD&#x60; but are now &#x60;SETTLED&#x60;, refer to the &#x60;holdInfo&#x60; field for the original &#x60;amount&#x60; the transaction was &#x60;HELD&#x60; at.  |  |
| **foreign_amount** | [**MoneyObject**](MoneyObject.md) | The foreign currency amount of this transaction. This field will be &#x60;null&#x60; for domestic transactions. The amount was converted to the AUD amount reflected in the &#x60;amount&#x60; of this transaction. Refer to the &#x60;holdInfo&#x60; field for the original &#x60;foreignAmount&#x60; the transaction was &#x60;HELD&#x60; at.  |  |
| **settled_at** | **Time** | The date-time at which this transaction settled. This field will be &#x60;null&#x60; for transactions that are currently in the &#x60;HELD&#x60; status.  |  |
| **created_at** | **Time** | The date-time at which this transaction was first encountered.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionResourceAttributes.new(
  status: null,
  raw_text: null,
  description: null,
  message: null,
  hold_info: null,
  round_up: null,
  cashback: null,
  amount: null,
  foreign_amount: null,
  settled_at: null,
  created_at: null
)
```

