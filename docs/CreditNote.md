# MergeAccountingClient::CreditNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **transaction_date** | **Time** | The credit note&#39;s transaction date. | [optional] |
| **status** | [**CreditNoteStatusEnum**](CreditNoteStatusEnum.md) | The credit note&#39;s status. | [optional] |
| **number** | **String** | The credit note&#39;s number. | [optional] |
| **contact** | **String** | The credit note&#39;s contact. | [optional] |
| **total_amount** | **Float** | The credit note&#39;s total amount. | [optional] |
| **remaining_credit** | **Float** | The credit note&#39;s remaining credit. | [optional] |
| **line_items** | [**Array&lt;CreditNoteLineItem&gt;**](CreditNoteLineItem.md) |  | [optional][readonly] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The credit note&#39;s currency. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s credit note was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s credit note was updated. | [optional] |
| **payments** | **Array&lt;String&gt;** | Array of &#x60;Payment&#x60; object IDs | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::CreditNote.new(
  id: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  remote_id: 123877,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  transaction_date: 2020-03-31T00:00Z,
  status: PAID,
  number: CN-29,
  contact: c6c7b870-bb4d-489a-921e-2f0ee4192ff9,
  total_amount: 50.0,
  remaining_credit: 20.0,
  line_items: [{&quot;item&quot;:&quot;0e3fd929-436c-4fd4-a48b-0c61f68d6178&quot;,&quot;name&quot;:&quot;Basic Monthly&quot;,&quot;description&quot;:&quot;prorated amount for items&quot;,&quot;quantity&quot;:1,&quot;memo&quot;:&quot;privNote&quot;,&quot;unit_price&quot;:&quot;5.0&quot;,&quot;tax_rate&quot;:&quot;8d9fd929-436c-4fd4-a48b-0c61f68d6178&quot;,&quot;amount&quot;:&quot;5.0&quot;,&quot;tracking_category&quot;:&quot;8d9fd929-436c-4fd4-a48b-0c61f68d6178&quot;,&quot;account&quot;:&quot;8d9fd929-436c-4fd4-a48b-0c61f68d6178&quot;}],
  currency: USD,
  remote_created_at: 2020-03-31T00:00Z,
  remote_updated_at: 2020-03-31T00:00Z,
  payments: [&quot;b26fd49a-cbae-470a-a8f8-bcbc119e0390&quot;],
  remote_was_deleted: null
)
```

