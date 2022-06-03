# MergeAccountingClient::InvoiceLineItemRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **description** | **String** | The line item&#39;s description. | [optional] |
| **unit_price** | **Float** | The line item&#39;s unit price. | [optional] |
| **quantity** | **Float** | The line item&#39;s quantity. | [optional] |
| **total_amount** | **Float** | The line item&#39;s total amount. | [optional] |
| **item** | **String** |  | [optional] |
| **account** | **String** |  | [optional] |
| **tracking_category** | **String** |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::InvoiceLineItemRequest.new(
  remote_id: 8765432,
  description: Pickleball lessons,
  unit_price: 50.0,
  quantity: 1.0,
  total_amount: 50.0,
  item: 5b3c1341-a20f-4e51-b72c-f3830a16c97b,
  account: cd0f32d4-a493-11ec-b909-0242ac120002,
  tracking_category: b38c59b0-a9d7-4740-b1ee-5436c6751e3d
)
```

