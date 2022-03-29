# MergeAccountingClient::InvoiceLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **description** | **String** | The line item&#39;s description. | [optional] |
| **unit_price** | **Float** | The line item&#39;s unit price. | [optional] |
| **quantity** | **Float** | The line item&#39;s quantity. | [optional] |
| **total_amount** | **Float** | The line item&#39;s total amount. | [optional] |
| **item** | **String** |  | [optional] |
| **account** | **String** |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::InvoiceLineItem.new(
  id: 022a2bef-57e5-4def-8ed2-7c41bd9a5ed8,
  remote_id: 8765432,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  description: Pickleball lessons,
  unit_price: 50.0,
  quantity: 1.0,
  total_amount: 50.0,
  item: 5b3c1341-a20f-4e51-b72c-f3830a16c97b,
  account: cd0f32d4-a493-11ec-b909-0242ac120002
)
```

