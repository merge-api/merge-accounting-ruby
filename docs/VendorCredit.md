# MergeAccountingClient::VendorCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **number** | **String** | The vendor credit&#39;s number. | [optional] |
| **transaction_date** | **Time** | The vendor credit&#39;s transaction date. | [optional] |
| **vendor** | **String** |  | [optional] |
| **total_amount** | **Float** | The vendor credit&#39;s total amount. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The vendor credit&#39;s currency. | [optional] |
| **lines** | [**Array&lt;VendorCreditLine&gt;**](VendorCreditLine.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted on the third-party. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::VendorCredit.new(
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 088899,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  number: 6,
  transaction_date: 2020-03-31T00:00Z,
  vendor: 3d263469-51a1-4766-9205-f6c997826be1,
  total_amount: 10000,
  currency: USD,
  lines: [{&quot;remote_id&quot;:&quot;121222&quot;,&quot;net_amount&quot;:25.54,&quot;tracking_category&quot;:&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;description&quot;:&quot;Gifted Merge Credit&quot;,&quot;account&quot;:&quot;9d892439-5fab-4dbb-8bd8-34f7f96c7912&quot;},{&quot;remote_id&quot;:&quot;121223&quot;,&quot;net_amount&quot;:10,&quot;tracking_category&quot;:&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;description&quot;:&quot;Refund for overpayment&quot;,&quot;account&quot;:&quot;9d892439-5fab-4dbb-8bd8-34f7f96c7912&quot;}],
  remote_was_deleted: null
)
```

