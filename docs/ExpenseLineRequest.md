# MergeAccountingClient::ExpenseLineRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item** | **String** | The line&#39;s item. | [optional] |
| **net_amount** | **Float** | The line&#39;s net amount. | [optional] |
| **tracking_category** | **String** |  | [optional] |
| **tracking_categories** | **Array&lt;String&gt;** |  | [optional] |
| **company** | **String** | The company the line belongs to. | [optional] |
| **account** | **String** | The expense&#39;s payment account. | [optional] |
| **contact** | **String** | The expense&#39;s contact. | [optional] |
| **description** | **String** | The description of the item that was purchased by the company. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::ExpenseLineRequest.new(
  item: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  net_amount: 25.54,
  tracking_category: b38c59b0-a9d7-4740-b1ee-5436c6751e3d,
  tracking_categories: [&quot;b38c59b0-a9d7-4740-b1ee-5436c6751e3d&quot;,&quot;9b840d2-686a-465a-8a8e-7b028498f8e4&quot;,&quot;a47e11b6-c73b-4a0c-be31-130fc48177fa&quot;],
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  account: 2a56344a-a491-11ec-b909-0242ac120002,
  contact: c640b80b-fac9-409f-aa19-1f9221aec445,
  description: MacBook Pro,
  remote_id: 121222,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

