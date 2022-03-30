# MergeAccountingClient::CompanyInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **name** | **String** | The company&#39;s name. | [optional] |
| **legal_name** | **String** | The company&#39;s legal name. | [optional] |
| **tax_number** | **String** | The company&#39;s tax number. | [optional] |
| **fiscal_year_end_month** | **Integer** | The company&#39;s fiscal year end month. | [optional] |
| **fiscal_year_end_day** | **Integer** | The company&#39;s fiscal year end day. | [optional] |
| **currency** | [**CurrencyEnum**](CurrencyEnum.md) | The currency set in the company&#39;s accounting platform. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s company was created. | [optional] |
| **urls** | **Array&lt;String&gt;** | The company&#39;s urls. | [optional] |
| **addresses** | [**Array&lt;Address&gt;**](Address.md) |  | [optional] |
| **phone_numbers** | [**Array&lt;AccountingPhoneNumber&gt;**](AccountingPhoneNumber.md) |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::CompanyInfo.new(
  id: 65d8ffd0-211b-4ba4-b85a-fbe2ce220982,
  remote_id: 19202938,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  name: Merge Pickleball Company,
  legal_name: Merge Pickleball Company Inc.,
  tax_number: 11-0011000,
  fiscal_year_end_month: 12,
  fiscal_year_end_day: 31,
  currency: USD,
  remote_created_at: 2020-03-31T00:00Z,
  urls: https://www.merge.dev,
  addresses: [{&quot;street_1&quot;:&quot;2920 Broadway&quot;,&quot;street_2&quot;:&quot;2nd Floor&quot;,&quot;city&quot;:&quot;New York&quot;,&quot;state&quot;:&quot;NY&quot;,&quot;country&quot;:&quot;USA&quot;,&quot;zip_code&quot;:&quot;10027&quot;}],
  phone_numbers: null
)
```

