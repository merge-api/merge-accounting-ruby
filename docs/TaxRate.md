# MergeAccountingClient::TaxRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The tax rate&#39;s description. | [optional] |
| **total_tax_rate** | **Float** | The tax rate&#39;s total tax rate. | [optional] |
| **effective_tax_rate** | **Float** | The tax rate&#39;s effective tax rate. | [optional] |
| **company** | **String** | The company the tax rate belongs to. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::TaxRate.new(
  description: Sales Tax,
  total_tax_rate: 15.0,
  effective_tax_rate: 15.0,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  remote_was_deleted: null,
  id: b82302de-852e-4e60-b050-edf9da3b7c02,
  remote_id: 039111,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

