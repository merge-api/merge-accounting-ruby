# MergeAccountingClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **name** | **String** | The account&#39;s name. | [optional] |
| **description** | **String** | The account&#39;s description. | [optional] |
| **classification** | [**ClassificationEnum**](ClassificationEnum.md) | The account&#39;s classification. | [optional] |
| **type** | **String** | The account&#39;s type. | [optional] |
| **status** | [**AccountStatusEnum**](AccountStatusEnum.md) | The account&#39;s status. | [optional] |
| **current_balance** | **Float** | The account&#39;s current balance. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The account&#39;s currency. | [optional] |
| **account_number** | **String** | The account&#39;s number. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted on the third-party. | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::Account.new(
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 21,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  name: Cash,
  description: Cash,
  classification: ASSET,
  type: Asset,
  status: ACTIVE,
  current_balance: null,
  currency: USD,
  account_number: X12Y9AB,
  remote_was_deleted: null
)
```

