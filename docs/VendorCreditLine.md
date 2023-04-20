# MergeAccountingClient::VendorCreditLine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **net_amount** | **Float** | The full value of the credit. | [optional] |
| **tracking_category** | **String** | The line&#39;s associated tracking category. | [optional] |
| **tracking_categories** | **Array&lt;String&gt;** | The line&#39;s associated tracking categories. |  |
| **description** | **String** | The line&#39;s description. | [optional] |
| **account** | **String** | The line&#39;s account. | [optional] |
| **company** | **String** | The company the line belongs to. | [optional] |
| **exchange_rate** | **String** | The vendor credit line item&#39;s exchange rate. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::VendorCreditLine.new(
  remote_id: 121222,
  net_amount: 25.54,
  tracking_category: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  tracking_categories: [&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;9b840d2-686a-465a-8a8e-7b028498f8e4&quot;,&quot;a47e11b6-c73b-4a0c-be31-130fc48177fa&quot;],
  description: Gifted Merge Credit,
  account: 9d892439-5fab-4dbb-8bd8-34f7f96c7912,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  exchange_rate: 2.9
)
```

