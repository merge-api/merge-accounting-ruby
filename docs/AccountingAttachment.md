# MergeAccountingClient::AccountingAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **file_name** | **String** | The attachment&#39;s name. | [optional] |
| **file_url** | **String** | The attachment&#39;s url. | [optional] |
| **company** | **String** | The company the accounting attachment belongs to. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::AccountingAttachment.new(
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 1018270,
  file_name: invoice.png,
  file_url: https://merge-brand.s3.amazonaws.com/20210315/rect-logo-270x80%402x.png,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  remote_was_deleted: null,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

