# MergeAccountingClient::AccountingAttachmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** | The attachment&#39;s name. | [optional] |
| **file_url** | **String** | The attachment&#39;s url. | [optional] |
| **company** | **String** | The company the accounting attachment belongs to. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::AccountingAttachmentRequest.new(
  file_name: invoice.png,
  file_url: https://merge-brand.s3.amazonaws.com/20210315/rect-logo-270x80%402x.png,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

