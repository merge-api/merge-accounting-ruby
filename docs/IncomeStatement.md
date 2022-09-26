# MergeAccountingClient::IncomeStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **name** | **String** | The income statement&#39;s name. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The income statement&#39;s currency. | [optional] |
| **start_period** | **Time** | The income statement&#39;s start period. | [optional] |
| **end_period** | **Time** | The income statement&#39;s end period. | [optional] |
| **income** | [**Array&lt;ReportItem&gt;**](ReportItem.md) |  | [optional][readonly] |
| **cost_of_sales** | [**Array&lt;ReportItem&gt;**](ReportItem.md) |  | [optional][readonly] |
| **gross_profit** | **Float** | The income statement&#39;s gross profit. | [optional] |
| **operating_expenses** | [**Array&lt;ReportItem&gt;**](ReportItem.md) |  | [optional][readonly] |
| **net_operating_income** | **Float** | The income statement&#39;s net operating profit. | [optional] |
| **non_operating_expenses** | [**Array&lt;ReportItem&gt;**](ReportItem.md) |  | [optional][readonly] |
| **net_income** | **Float** | The income statement&#39;s net income. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::IncomeStatement.new(
  id: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  remote_id: 1342348,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  name: IncomeStatement,
  currency: USD,
  start_period: null,
  end_period: null,
  income: [{&quot;remote_id&quot;:&quot;10299&quot;,&quot;name&quot;:&quot;Total Income&quot;,&quot;value&quot;:325.0,&quot;sub_items&quot;:[{&quot;remote_id&quot;:&quot;10200&quot;,&quot;name&quot;:&quot;Landscaping Services&quot;,&quot;value&quot;:425,&quot;sub_items&quot;:null},{&quot;remote_id&quot;:&quot;10201&quot;,&quot;name&quot;:&quot;Pest Control Services&quot;,&quot;value&quot;:-100,&quot;sub_items&quot;:null}]}],
  cost_of_sales: [{&quot;remote_id&quot;:&quot;10299&quot;,&quot;name&quot;:&quot;Total COGS&quot;,&quot;value&quot;:25.0,&quot;sub_items&quot;:[{&quot;remote_id&quot;:&quot;10200&quot;,&quot;name&quot;:&quot;Supplies&quot;,&quot;value&quot;:10,&quot;sub_items&quot;:null}]}],
  gross_profit: 300.0,
  operating_expenses: [{&quot;remote_id&quot;:&quot;10299&quot;,&quot;name&quot;:&quot;Total Operating Expenses&quot;,&quot;value&quot;:100.0,&quot;sub_items&quot;:null}],
  net_operating_income: 200.0,
  non_operating_expenses: [{&quot;remote_id&quot;:&quot;10299&quot;,&quot;name&quot;:&quot;Total Non-Operating Expenses&quot;,&quot;value&quot;:100.0,&quot;sub_items&quot;:null}],
  net_income: 100.0,
  remote_was_deleted: null
)
```

