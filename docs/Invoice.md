# MergeAccountingClient::Invoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **type** | [**InvoiceTypeEnum**](InvoiceTypeEnum.md) | The invoice&#39;s type. | [optional] |
| **contact** | **String** |  | [optional] |
| **number** | **String** | The invoice&#39;s number. | [optional] |
| **issue_date** | **Time** | The invoice&#39;s issue date. | [optional] |
| **due_date** | **Time** | The invoice&#39;s due date. | [optional] |
| **paid_on_date** | **Time** | The invoice&#39;s paid date. | [optional] |
| **memo** | **String** | The invoice&#39;s private note. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The invoice&#39;s currency. | [optional] |
| **total_discount** | **Float** | The invoice&#39;s total discount. | [optional] |
| **sub_total** | **Float** | The invoice&#39;s sub-total. | [optional] |
| **total_tax_amount** | **Float** | The invoice&#39;s total tax amount. | [optional] |
| **total_amount** | **Float** | The invoice&#39;s total amount. | [optional] |
| **balance** | **Float** | The invoice&#39;s remaining balance. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s invoice entry was updated. | [optional] |
| **payments** | **Array&lt;String&gt;** | Array of &#x60;Payment&#x60; object IDs. | [optional] |
| **line_items** | [**Array&lt;InvoiceLineItem&gt;**](InvoiceLineItem.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::Invoice.new(
  id: 9871b4a9-f5d2-4f3b-a66b-dfedbed42c46,
  remote_id: 990110,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  type: ACCOUNTS_RECEIVABLE,
  contact: 022a2bef-57e5-4def-8ed2-7c41bd9a5ed8,
  number: AIQ12546,
  issue_date: 2020-03-31T00:00Z,
  due_date: 2020-04-15T00:00Z,
  paid_on_date: 2020-04-01T00:00Z,
  memo: Weekly Payment,
  currency: USD,
  total_discount: null,
  sub_total: 100,
  total_tax_amount: 5,
  total_amount: 105,
  balance: 105,
  remote_updated_at: 2020-04-01T00:00Z,
  payments: [&quot;b26fd49a-cbae-470a-a8f8-bcbc119e0390&quot;],
  line_items: [{&quot;id&quot;:&quot;022a2bef-57e5-4def-8ed2-7c41bd9a5ed8&quot;,&quot;remote_id&quot;:&quot;8765432&quot;,&quot;description&quot;:&quot;Pickleball lessons&quot;,&quot;unit_price&quot;:50.0,&quot;quantity&quot;:2.0,&quot;total_amount&quot;:100.0,&quot;item&quot;:&quot;5b3c1341-a20f-4e51-b72c-f3830a16c97b&quot;,&quot;remote_data&quot;:[{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]}]
)
```

