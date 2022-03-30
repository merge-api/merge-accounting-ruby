# MergeAccountingClient::PurchaseOrderLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The line item&#39;s description. | [optional] |
| **unit_price** | **Float** | The line item&#39;s unit price. | [optional] |
| **quantity** | **Float** | The line item&#39;s quantity. | [optional] |
| **item** | **String** |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::PurchaseOrderLineItem.new(
  description: Pickleball paddles,
  unit_price: 25.0,
  quantity: 10.0,
  item: 0958cbc6-6040-430a-848e-aafacbadf4ae
)
```

