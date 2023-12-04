# MergeAccountingClient::PaymentLineItemRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applied_amount** | **String** | The amount being applied to the transaction. | [optional] |
| **applied_date** | **Time** | The date the payment portion is applied. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **related_object_id** | **String** | The Merge ID of the transaction the payment portion is being applied to. | [optional] |
| **related_object_type** | **String** | The type of transaction the payment portion is being applied to. Possible values include: INVOICE, JOURNAL_ENTRY, or CREDIT_NOTE. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::PaymentLineItemRequest.new(
  applied_amount: 25,
  applied_date: 2020-03-31T00:00Z,
  remote_id: 234,
  related_object_id: 92e8a369-fffe-430d-b93a-f7e8a16563f1,
  related_object_type: INVOICE,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

