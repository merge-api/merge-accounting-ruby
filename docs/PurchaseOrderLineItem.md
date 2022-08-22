# MergeAccountingClient::PurchaseOrderLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The line item&#39;s description. | [optional] |
| **unit_price** | **Float** | The line item&#39;s unit price. | [optional] |
| **quantity** | **Float** | The line item&#39;s quantity. | [optional] |
| **item** | **String** |  | [optional] |
| **account** | **String** | The purchase order line item&#39;s account. | [optional] |
| **tracking_category** | **String** | The purchase order line item&#39;s associated tracking category. | [optional] |
| **tax_amount** | **String** | The purchase order line item&#39;s tax amount. | [optional] |
| **total_line_amount** | **String** | The purchase order line item&#39;s total amount. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::PurchaseOrderLineItem.new(
  description: Pickleball paddles,
  unit_price: 25.0,
  quantity: 10.0,
  item: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  account: null,
  tracking_category: f1214c24-2702-4617-b74b-3ddecfc0d384,
  tax_amount: 10.0,
  total_line_amount: 260.0
)
```

