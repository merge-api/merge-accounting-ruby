# MergeAccountingClient::JournalEntryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **transaction_date** | **Time** | The journal entry&#39;s transaction date. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s journal entry was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s journal entry was updated. | [optional] |
| **payments** | **Array&lt;String&gt;** | Array of &#x60;Payment&#x60; object IDs. | [optional] |
| **memo** | **String** | The journal entry&#39;s private note. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The journal&#39;s currency. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::JournalEntryRequest.new(
  remote_id: 088899,
  transaction_date: 2020-03-31T00:00Z,
  remote_created_at: 2020-03-31T00:00Z,
  remote_updated_at: 2020-03-31T00:00Z,
  payments: [&quot;b26fd49a-cbae-470a-a8f8-bcbc119e0390&quot;],
  memo: Weekly Payment,
  currency: USD
)
```

