# MergeAccountingClient::LinkedAccountSelectiveSyncConfigurationListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_configurations** | [**Array&lt;LinkedAccountSelectiveSyncConfigurationRequest&gt;**](LinkedAccountSelectiveSyncConfigurationRequest.md) | The selective syncs associated with a linked account. |  |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::LinkedAccountSelectiveSyncConfigurationListRequest.new(
  sync_configurations: null
)
```

