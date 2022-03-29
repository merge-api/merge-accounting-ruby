# MergeAccountingClient::PurchaseOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **status** | [**PurchaseOrderStatusEnum**](PurchaseOrderStatusEnum.md) | The purchase order&#39;s status. | [optional] |
| **issue_date** | **Time** | The purchase order&#39;s issue date. | [optional] |
| **delivery_date** | **Time** | The purchase order&#39;s delivery date. | [optional] |
| **delivery_address** | **String** | The purchase order&#39;s delivery address. | [optional] |
| **total_amount** | **Float** | The purchase order&#39;s total amount. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The purchase order&#39;s currency. | [optional] |
| **line_items** | [**Array&lt;PurchaseOrderLineItem&gt;**](PurchaseOrderLineItem.md) |  | [optional][readonly] |
| **remote_created_at** | **Time** | When the third party&#39;s purchase order note was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s purchase order note was updated. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::PurchaseOrder.new(
  id: 0048ea5b-911e-4dff-9364-92070dea62ff,
  remote_id: 239741,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  status: SUBMITTED,
  issue_date: null,
  delivery_date: 2020-04-15T00:00Z,
  delivery_address: null,
  total_amount: 260.0,
  currency: USD,
  line_items: [{&quot;description&quot;:&quot;Pickleball paddles&quot;,&quot;unit_price&quot;:25.0,&quot;quantity&quot;:10.0,&quot;item&quot;:&quot;0958cbc6-6040-430a-848e-aafacbadf4ae&quot;},{&quot;description&quot;:&quot;Pickleball Balls&quot;,&quot;unit_price&quot;:1.0,&quot;quantity&quot;:10.0,&quot;item&quot;:&quot;249c9faa-3045-4a31-953b-8f22d3613301&quot;}],
  remote_created_at: 2020-03-31T00:00Z,
  remote_updated_at: 2020-03-31T00:00Z
)
```

