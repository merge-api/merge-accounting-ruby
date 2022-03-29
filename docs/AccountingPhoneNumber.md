# MergeAccountingClient::AccountingPhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The phone number. | [optional] |
| **type** | **String** | The phone number&#39;s type. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::AccountingPhoneNumber.new(
  number: +3198675309,
  type: Mobile
)
```

