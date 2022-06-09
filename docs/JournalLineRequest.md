# MergeAccountingClient::JournalLineRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **account** | **String** |  | [optional] |
| **net_amount** | **Float** | The line&#39;s net amount. | [optional] |
| **tracking_category** | **String** |  | [optional] |
| **contact** | **String** |  | [optional] |
| **description** | **String** | The line&#39;s description. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::JournalLineRequest.new(
  remote_id: 121222,
  account: 9d892439-5fab-4dbb-8bd8-34f7f96c7912,
  net_amount: 25.54,
  tracking_category: d25d609b-945f-4762-b55a-1c8fb220c43c,
  contact: d2d5ea3c-b032-11ec-b909-0242ac120002,
  description: Cash payment for lunch
)
```

