# MergeAccountingClient::VendorCreditLine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **net_amount** | **Float** | The line&#39;s net amount. | [optional] |
| **tracking_category** | **String** | The line&#39;s associated tracking category. | [optional] |
| **description** | **String** | The line&#39;s description. | [optional] |
| **account** | **String** | The line&#39;s account. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::VendorCreditLine.new(
  remote_id: 121222,
  net_amount: 25.54,
  tracking_category: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  description: Gifted Merge Credit,
  account: 9d892439-5fab-4dbb-8bd8-34f7f96c7912
)
```

