# MergeAccountingClient::ExpenseLine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **item** | **String** | The line&#39;s item. | [optional] |
| **net_amount** | **Float** | The line&#39;s net amount. | [optional] |
| **tracking_category** | **String** |  | [optional] |
| **account** | **String** |  | [optional] |
| **description** | **String** | The line item&#39;s description. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::ExpenseLine.new(
  remote_id: 121222,
  item: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  net_amount: 25.54,
  tracking_category: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  account: 2a56344a-a491-11ec-b909-0242ac120002,
  description: MacBook Pro
)
```

