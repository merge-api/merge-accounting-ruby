# MergeAccountingClient::CreditNoteLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item** | **String** |  | [optional] |
| **name** | **String** | The credit note line item&#39;s name. | [optional] |
| **description** | **String** | The credit note line item&#39;s description. | [optional] |
| **quantity** | **String** | The credit note line item&#39;s quantity. | [optional] |
| **memo** | **String** | The credit note line item&#39;s memo. | [optional] |
| **unit_price** | **String** | The credit note line item&#39;s unit price. | [optional] |
| **tax_rate** | **String** | The credit note line item&#39;s tax rate. | [optional] |
| **total_line_amount** | **String** | The credit note line item&#39;s total. | [optional] |
| **tracking_category** | **String** | The purchase order line item&#39;s associated tracking category. | [optional] |
| **account** | **String** | The credit note line item&#39;s account. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::CreditNoteLineItem.new(
  item: 0e3fd929-436c-4fd4-a48b-0c61f68d6178,
  name: Basic Monthly,
  description: prorated amount for items,
  quantity: 1,
  memo: privNote,
  unit_price: 5.0,
  tax_rate: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  total_line_amount: 5.0,
  tracking_category: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  account: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  remote_id: null
)
```

