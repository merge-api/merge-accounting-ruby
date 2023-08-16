# MergeAccountingClient::TrackingCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The tracking category&#39;s name. | [optional] |
| **status** | [**Status7d1Enum**](Status7d1Enum.md) | The tracking category&#39;s status.  * &#x60;ACTIVE&#x60; - ACTIVE * &#x60;ARCHIVED&#x60; - ARCHIVED | [optional] |
| **category_type** | [**CategoryTypeEnum**](CategoryTypeEnum.md) | The tracking category’s type.  * &#x60;CLASS&#x60; - CLASS * &#x60;DEPARTMENT&#x60; - DEPARTMENT | [optional] |
| **parent_category** | **String** | ID of the parent tracking category. | [optional] |
| **company** | **String** | The company the tracking category belongs to. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::TrackingCategory.new(
  name: Marketing Department,
  status: ACTIVE,
  category_type: DEPARTMENT,
  parent_category: d25d609b-945f-4762-b55a-1c8fb220c43c,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  remote_was_deleted: null,
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 948201,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

