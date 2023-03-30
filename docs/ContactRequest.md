# MergeAccountingClient::ContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The contact&#39;s name. | [optional] |
| **is_supplier** | **Boolean** | Whether the contact is a supplier. | [optional] |
| **is_customer** | **Boolean** | Whether the contact is a customer. | [optional] |
| **email_address** | **String** | The contact&#39;s email address. | [optional] |
| **tax_number** | **String** | The contact&#39;s tax number. | [optional] |
| **status** | [**Status7d1Enum**](Status7d1Enum.md) | The contact&#39;s status  * &#x60;ACTIVE&#x60; - ACTIVE * &#x60;ARCHIVED&#x60; - ARCHIVED | [optional] |
| **currency** | **String** | The currency the contact&#39;s transactions are in. | [optional] |
| **company** | **String** | The company the contact belongs to. | [optional] |
| **addresses** | **Array&lt;String&gt;** | &#x60;Address&#x60; object IDs for the given &#x60;Contacts&#x60; object. | [optional] |
| **phone_numbers** | [**Array&lt;AccountingPhoneNumberRequest&gt;**](AccountingPhoneNumberRequest.md) | &#x60;AccountingPhoneNumber&#x60; object for the given &#x60;Contacts&#x60; object. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::ContactRequest.new(
  name: Gil Feig&#39;s Pickleball Team,
  is_supplier: null,
  is_customer: true,
  email_address: pickleball@merge.dev,
  tax_number: 12-3456789,
  status: ACTIVE,
  currency: USD,
  company: 595c8f97-2ac4-45b7-b000-41bdf43240b5,
  addresses: [&quot;2f2702aa-8948-492b-a412-2acdf6d2c499&quot;,&quot;d98c7428-8dda-48a8-a1da-c570f65e2375&quot;],
  phone_numbers: [{&quot;number&quot;:&quot;+3198675309&quot;,&quot;type&quot;:&quot;Mobile&quot;}],
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

