# MergeAccountingClient::ExpenseLine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **item** | **String** | The line&#39;s item. | [optional] |
| **net_amount** | **Float** | The line&#39;s net amount. | [optional] |
| **tracking_category** | **String** |  | [optional] |
| **tracking_categories** | **Array&lt;String&gt;** |  | [optional] |
| **company** | **String** | The company the line belongs to. | [optional] |
| **account** | **String** | The expense&#39;s payment account. | [optional] |
| **contact** | **String** | The expense&#39;s contact. | [optional] |
| **description** | **String** | The description of the item that was purchased by the company. | [optional] |
| **exchange_rate** | **String** | The expense line item&#39;s exchange rate. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::ExpenseLine.new(
  remote_id: 121222,
  item: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  net_amount: 25.54,
  tracking_category: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  tracking_categories: [&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;9b840d2-686a-465a-8a8e-7b028498f8e4&quot;,&quot;a47e11b6-c73b-4a0c-be31-130fc48177fa&quot;],
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  account: 2a56344a-a491-11ec-b909-0242ac120002,
  contact: c640b80b-fac9-409f-aa19-1f9221aec445,
  description: MacBook Pro,
  exchange_rate: 2.9,
  modified_at: 2021-10-16T00:00Z
)
```

