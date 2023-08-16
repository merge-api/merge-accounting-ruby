# MergeAccountingClient::AccountingPhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | The phone number. | [optional] |
| **type** | **String** | The phone number&#39;s type. | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::AccountingPhoneNumber.new(
  number: +3198675309,
  type: Mobile,
  modified_at: 2021-10-16T00:00Z
)
```

