# MergeAccountingClient::LinkedAccountSelectiveSyncConfigurationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_account_conditions** | [**Array&lt;LinkedAccountConditionRequest&gt;**](LinkedAccountConditionRequest.md) | The conditions belonging to a selective sync. |  |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::LinkedAccountSelectiveSyncConfigurationRequest.new(
  linked_account_conditions: null
)
```

