# MergeAccountingClient::JournalLineRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** |  | [optional] |
| **net_amount** | **Float** | The value of the line item including taxes and other fees. | [optional] |
| **tracking_category** | **String** |  | [optional] |
| **tracking_categories** | **Array&lt;String&gt;** |  | [optional] |
| **contact** | **String** |  | [optional] |
| **description** | **String** | The line&#39;s description. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::JournalLineRequest.new(
  account: 9d892439-5fab-4dbb-8bd8-34f7f96c7912,
  net_amount: 25.54,
  tracking_category: d25d609b-945f-4762-b55a-1c8fb220c43c,
  tracking_categories: [&quot;d25d609b-945f-4762-b55a-1c8fb220c43c&quot;,&quot;9b840d2-686a-465a-8a8e-7b028498f8e4&quot;,&quot;a47e11b6-c73b-4a0c-be31-130fc48177fa&quot;],
  contact: d2d5ea3c-b032-11ec-b909-0242ac120002,
  description: Cash payment for lunch,
  remote_id: 121222,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

