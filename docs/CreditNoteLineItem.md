# MergeAccountingClient::CreditNoteLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item** | **String** |  | [optional] |
| **name** | **String** | The credit note line item&#39;s name. | [optional] |
| **description** | **String** | The description of the item that is owed. | [optional] |
| **quantity** | **String** | The credit note line item&#39;s quantity. | [optional] |
| **memo** | **String** | The credit note line item&#39;s memo. | [optional] |
| **unit_price** | **String** | The credit note line item&#39;s unit price. | [optional] |
| **tax_rate** | **String** | The credit note line item&#39;s tax rate. | [optional] |
| **total_line_amount** | **String** | The credit note line item&#39;s total. | [optional] |
| **tracking_category** | **String** | The credit note line item&#39;s associated tracking category. | [optional] |
| **tracking_categories** | **Array&lt;String&gt;** | The credit note line item&#39;s associated tracking categories. |  |
| **account** | **String** | The credit note line item&#39;s account. | [optional] |
| **company** | **String** | The company the credit note belongs to. | [optional] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted in the third party platform. | [optional][readonly] |
| **id** | **String** |  | [optional][readonly] |
| **created_at** | **Time** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::CreditNoteLineItem.new(
  item: 0e3fd929-436c-4fd4-a48b-0c61f68d6178,
  name: Basic Monthly,
  description: prorated amount for items,
  quantity: 1,
  memo: privNote,
  unit_price: 5.0,
  tax_rate: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  total_line_amount: 5.0,
  tracking_category: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  tracking_categories: [&quot;8d9fd929-436c-4fd4-a48b-0c61f68d6178&quot;,&quot;9b840d2-686a-465a-8a8e-7b028498f8e4&quot;,&quot;a47e11b6-c73b-4a0c-be31-130fc48177fa&quot;],
  account: 8d9fd929-436c-4fd4-a48b-0c61f68d6178,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  remote_id: 121222,
  remote_was_deleted: true,
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  created_at: 2021-09-15T00:00Z,
  modified_at: 2021-10-16T00:00Z
)
```

