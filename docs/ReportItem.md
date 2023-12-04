# MergeAccountingClient::ReportItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The report item&#39;s name. | [optional] |
| **value** | **Float** | The report item&#39;s value. | [optional] |
| **sub_items** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **company** | **String** | The company the report item belongs to. | [optional] |
| **created_at** | **Time** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::ReportItem.new(
  remote_id: 10299,
  name: Revenue,
  value: 1000,
  sub_items: [{&quot;remote_id&quot;:&quot;10300&quot;,&quot;name&quot;:&quot;Revenue - San Francisco&quot;,&quot;value&quot;:500,&quot;sub_items&quot;:[]},{&quot;remote_id&quot;:&quot;10301&quot;,&quot;name&quot;:&quot;Revenue - New York&quot;,&quot;value&quot;:500,&quot;sub_items&quot;:[]}],
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z
)
```

