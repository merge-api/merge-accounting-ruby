# MergeAccountingClient::PhoneNumbersApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**phone_numbers_retrieve**](PhoneNumbersApi.md#phone_numbers_retrieve) | **GET** /phone-numbers/{id} |  |


## phone_numbers_retrieve

> <AccountingPhoneNumber> phone_numbers_retrieve(x_account_token, id, opts)



Returns an `AccountingPhoneNumber` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_accounting_client'
# setup authorization
MergeAccountingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeAccountingClient::PhoneNumbersApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.phone_numbers_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->phone_numbers_retrieve: #{e}"
end
```

#### Using the phone_numbers_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountingPhoneNumber>, Integer, Hash)> phone_numbers_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.phone_numbers_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountingPhoneNumber>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PhoneNumbersApi->phone_numbers_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**AccountingPhoneNumber**](AccountingPhoneNumber.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

