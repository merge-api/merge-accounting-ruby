# MergeAccountingClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AddressTypeEnum**](AddressTypeEnum.md) | The address type. | [optional] |
| **street_1** | **String** | Line 1 of the address&#39;s street. | [optional] |
| **street_2** | **String** | Line 2 of the address&#39;s street. | [optional] |
| **city** | **String** | The address&#39;s city. | [optional] |
| **state** | [**StateEnum**](StateEnum.md) | The address&#39;s state. | [optional] |
| **country** | [**CountryEnum**](CountryEnum.md) | The address&#39;s country. | [optional] |
| **zip_code** | **String** | The address&#39;s zip code. | [optional] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::Address.new(
  type: SHIPPING,
  street_1: 2920 Broadway,
  street_2: 2nd Floor,
  city: New York,
  state: NY,
  country: USA,
  zip_code: 10027
)
```

