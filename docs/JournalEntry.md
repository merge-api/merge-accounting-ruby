# MergeAccountingClient::JournalEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **transaction_date** | **Time** | The journal entry&#39;s transaction date. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s journal entry was created. | [optional] |
| **payments** | **Array&lt;String&gt;** | Array of &#x60;Payment&#x60; object IDs. | [optional] |
| **lines** | [**Array&lt;JournalLine&gt;**](JournalLine.md) |  | [optional][readonly] |
| **memo** | **String** | The journal entry&#39;s private note. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::JournalEntry.new(
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 088899,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  transaction_date: 2020-03-31T00:00Z,
  remote_created_at: 2020-03-31T00:00Z,
  payments: [&quot;b26fd49a-cbae-470a-a8f8-bcbc119e0390&quot;],
  lines: [{&quot;remote_id&quot;:&quot;121222&quot;,&quot;account&quot;:&quot;9d892439-5fab-4dbb-8bd8-34f7f96c7912&quot;,&quot;net_amount&quot;:25.54,&quot;description&quot;:&quot;Cash payment for lunch&quot;},{&quot;remote_id&quot;:&quot;121223&quot;,&quot;account&quot;:&quot;f963f34d-3d2f-4f77-b557-cf36bc7e6498&quot;,&quot;net_amount&quot;:10.0}],
  memo: Weekly Payment
)
```

