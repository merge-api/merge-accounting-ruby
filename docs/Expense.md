# MergeAccountingClient::Expense

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **transaction_date** | **Time** | When the transaction occurred. | [optional] |
| **remote_created_at** | **Time** | When the expense was created. | [optional] |
| **account** | **String** |  | [optional] |
| **contact** | **String** |  | [optional] |
| **total_amount** | **Float** | The expense&#39;s total amount. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The expense&#39;s currency. | [optional] |
| **memo** | **String** | The expense&#39;s private note. | [optional] |
| **lines** | [**Array&lt;ExpenseLine&gt;**](ExpenseLine.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::Expense.new(
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 088899,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  transaction_date: null,
  remote_created_at: 2020-03-31T00:00Z,
  account: 9d892439-5fab-4dbb-8bd8-34f7f96c7912,
  contact: 3d263469-51a1-4766-9205-f6c997826be1,
  total_amount: 10000.0,
  currency: USD,
  memo: New employee supplies,
  lines: [{&quot;remote_id&quot;:&quot;121222&quot;,&quot;net_amount&quot;:25.54,&quot;trackingCategory&quot;:&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;item&quot;:&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;account&quot;:&quot;2a56344a-a491-11ec-b909-0242ac120002&quot;,&quot;description&quot;:&quot;MacBook Pro&quot;},{&quot;remote_id&quot;:&quot;121223&quot;,&quot;net_amount&quot;:10,&quot;trackingCategory&quot;:&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;item&quot;:&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;account&quot;:&quot;2a56344a-a491-11ec-b909-0242ac120002&quot;,&quot;description&quot;:&quot;Desk Lamp&quot;}]
)
```

