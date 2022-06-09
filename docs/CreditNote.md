# MergeAccountingClient::CreditNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **transaction_date** | **Time** | The credit note&#39;s transaction date. | [optional] |
| **status** | [**CreditNoteStatusEnum**](CreditNoteStatusEnum.md) | The credit note&#39;s status. | [optional] |
| **total_amount** | **Float** | The credit note&#39;s total amount. | [optional] |
| **remaining_credit** | **Float** | The credit note&#39;s remaining credit. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The credit note&#39;s currency. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s credit note was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s credit note was updated. | [optional] |
| **payments** | **Array&lt;String&gt;** | Array of &#x60;Payment&#x60; object IDs | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted on the third-party. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::CreditNote.new(
  id: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  remote_id: 123877,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  transaction_date: 2020-03-31T00:00Z,
  status: PAID,
  total_amount: 50.0,
  remaining_credit: 20.0,
  currency: USD,
  remote_created_at: 2020-03-31T00:00Z,
  remote_updated_at: 2020-03-31T00:00Z,
  payments: [&quot;b26fd49a-cbae-470a-a8f8-bcbc119e0390&quot;],
  remote_was_deleted: null
)
```

