# MergeAccountingClient::TransactionLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memo** | **String** | A memo attached to the line item. | [optional] |
| **unit_price** | **String** | The line item&#39;s unit price. | [optional] |
| **quantity** | **String** | The line item&#39;s quantity. | [optional] |
| **item** | **String** |  | [optional] |
| **account** | **String** | The line item&#39;s account. | [optional] |
| **tracking_category** | **String** | The line&#39;s associated tracking category. | [optional] |
| **total_line_amount** | **String** | The line item&#39;s total. | [optional] |
| **tax_rate** | **String** | The line item&#39;s tax rate. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::TransactionLineItem.new(
  memo: Pickleball paddles,
  unit_price: 25.0,
  quantity: 10.0,
  item: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  account: 2b38c085-2620-4269-b5ec-75dd9095ed2c,
  tracking_category: f1214c24-2702-4617-b74b-3ddecfc0d384,
  total_line_amount: 260.0,
  tax_rate: null,
  remote_id: null
)
```

