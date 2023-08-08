# MergeAccountingClient::Item

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The item&#39;s name. | [optional] |
| **status** | [**Status7d1Enum**](Status7d1Enum.md) | The item&#39;s status.  * &#x60;ACTIVE&#x60; - ACTIVE * &#x60;ARCHIVED&#x60; - ARCHIVED | [optional] |
| **unit_price** | **Float** | The item&#39;s unit price. | [optional] |
| **purchase_price** | **Float** | The price at which the item is purchased from a vendor. | [optional] |
| **purchase_account** | **String** | References the default account used to record a purchase of the item. | [optional] |
| **sales_account** | **String** | References the default account used to record a sale. | [optional] |
| **company** | **String** | The company the item belongs to. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s item note was updated. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::Item.new(
  id: d2f972d0-2526-434b-9409-4c3b468e08f0,
  remote_id: 12374,
  name: Pickleball Paddle,
  status: ACTIVE,
  unit_price: 10.0,
  purchase_price: 25.0,
  purchase_account: 9871b4a9-f5d2-4f3b-a66b-dfedbed42c46,
  sales_account: 3872b4c9-f5d2-4f3b-a66b-dfedbed42c49,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  remote_updated_at: 2020-03-31T00:00Z,
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

