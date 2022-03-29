# MergeAccountingClient::PaginatedWebhookReceiverList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;WebhookReceiver&gt;**](WebhookReceiver.md) |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::PaginatedWebhookReceiverList.new(
  _next: null,
  previous: null,
  results: null
)
```

