# MergeAccountingClient::LinkedAccountSelectiveSyncConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_account_conditions** | [**Array&lt;LinkedAccountCondition&gt;**](LinkedAccountCondition.md) | The conditions belonging to a selective sync. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::LinkedAccountSelectiveSyncConfiguration.new(
  linked_account_conditions: null
)
```

