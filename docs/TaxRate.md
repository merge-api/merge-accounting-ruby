# MergeAccountingClient::TaxRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **description** | **String** | The tax rate&#39;s description. | [optional] |
| **total_tax_rate** | **Float** | The tax rate&#39;s total tax rate. | [optional] |
| **effective_tax_rate** | **Float** | The tax rate&#39;s effective tax rate. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted on the third-party. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::TaxRate.new(
  id: b82302de-852e-4e60-b050-edf9da3b7c02,
  remote_id: 039111,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  description: Sales Tax,
  total_tax_rate: 15.0,
  effective_tax_rate: 15.0,
  remote_was_deleted: null
)
```

