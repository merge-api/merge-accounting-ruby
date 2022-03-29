# MergeAccountingClient::Payment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **transaction_date** | **Time** | The payment&#39;s transaction date. | [optional] |
| **contact** | **String** |  | [optional] |
| **account** | **String** |  | [optional] |
| **total_amount** | **Float** | The payment&#39;s total amount. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s payment entry was updated. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::Payment.new(
  id: b26fd49a-cbae-470a-a8f8-bcbc119e0390,
  remote_id: 987300,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  transaction_date: 2020-03-31T00:00Z,
  contact: 5b3c1341-a20f-4e51-b72c-f3830a16c97b,
  account: d6e687d6-0c36-48a1-8114-35324b5cb38f,
  total_amount: 50.0,
  remote_updated_at: 2020-03-31T00:00Z
)
```

