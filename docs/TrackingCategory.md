# MergeAccountingClient::TrackingCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **name** | **String** | The tracking category&#39;s name. | [optional] |
| **status** | [**Status7d1Enum**](Status7d1Enum.md) | The tracking category&#39;s status. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::TrackingCategory.new(
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 948201,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  name: Marketing Department,
  status: ACTIVE
)
```

