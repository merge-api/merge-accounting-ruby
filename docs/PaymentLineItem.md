# MergeAccountingClient::PaymentLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_amount** | **String** | The amount being applied to the transaction. | [optional] |
| **applied_date** | **Time** | The date the payment portion is applied. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **related_object_id** | **String** | The Merge ID of the transaction the payment portion is being applied to. | [optional] |
| **related_object_type** | **String** | The type of transaction the payment portion is being applied to. Possible values include: INVOICE, JOURNAL_ENTRY, or CREDIT_NOTE. | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::PaymentLineItem.new(
  applied_amount: 25,
  applied_date: 2020-03-31T00:00Z,
  remote_id: 234,
  related_object_id: 92e8a369-fffe-430d-b93a-f7e8a16563f1,
  related_object_type: INVOICE,
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z
)
```

