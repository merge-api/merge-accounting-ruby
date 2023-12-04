# MergeAccountingClient::AccountingPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | Beginning date of the period | [optional] |
| **end_date** | **Time** | End date of the period | [optional] |
| **status** | [**AccountingPeriodStatusEnum**](AccountingPeriodStatusEnum.md) |  | [optional] |
| **name** | **String** | Name of the accounting period. | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::AccountingPeriod.new(
  start_date: 2020-03-31T00:00Z,
  end_date: null,
  status: ACTIVE,
  name: April 2020 Financials,
  id: null,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z
)
```

