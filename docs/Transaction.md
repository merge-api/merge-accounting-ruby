# MergeAccountingClient::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **transaction_type** | **String** | The type of general transaction. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **number** | **String** | The transaction number. | [optional] |
| **transaction_date** | **Time** | The transaction date. | [optional] |
| **account** | **String** | The transaction&#39;s account. | [optional] |
| **contact** | **String** | The transaction&#39;s contact. | [optional] |
| **total_amount** | **String** | The transaction&#39;s total amount. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The transaction&#39;s currency. | [optional] |
| **line_items** | [**Array&lt;TransactionLineItem&gt;**](TransactionLineItem.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::Transaction.new(
  id: 0048ea5b-911e-4dff-9364-92070dea62ff,
  transaction_type: estimate,
  remote_id: 239741,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  number: 122,
  transaction_date: null,
  account: 3e442c5d-8f51-4103-b5c9-dcee39c30a08,
  contact: 2c22ce34-5c6e-4fc7-a594-7f26bb4cf78b,
  total_amount: 260.0,
  currency: USD,
  line_items: [{&quot;memo&quot;:&quot;Pickleball paddles&quot;,&quot;unit_price&quot;:25.0,&quot;quantity&quot;:10.0,&quot;item&quot;:&quot;0958cbc6-6040-430a-848e-aafacbadf4ae&quot;,&quot;account&quot;:&quot;3e442c5d-8f51-4103-b5c9-dcee39c30a08&quot;,&quot;tracking_category&quot;:&quot;f1214c24-2702-4617-b74b-3ddecfc0d384&quot;,&quot;total_line_amount&quot;:260.0,&quot;tax_rate&quot;:&quot;a12e7c20-1922-9df7-s75n-edfeewnn7384&quot;},{&quot;memo&quot;:&quot;Pickleball Balls&quot;,&quot;unit_price&quot;:1.0,&quot;quantity&quot;:10.0,&quot;item&quot;:&quot;249c9faa-3045-4a31-953b-8f22d3613301&quot;,&quot;account&quot;:&quot;3e442c5d-8f51-4103-b5c9-dcee39c30a08&quot;,&quot;tracking_category&quot;:&quot;f1214c24-2702-4617-b74b-3ddecfc0d384&quot;,&quot;total_line_amount&quot;:20.0,&quot;tax_rate&quot;:&quot;a12e7c20-1922-9df7-s75n-edfeewnn7384&quot;}],
  remote_was_deleted: null
)
```

