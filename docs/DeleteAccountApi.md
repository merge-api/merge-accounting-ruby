# MergeAccountingClient::DeleteAccountApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account_delete**](DeleteAccountApi.md#delete_account_delete) | **POST** /delete-account |  |


## delete_account_delete

> delete_account_delete(x_account_token)



Delete a linked account.

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

api_instance = MergeAccountingClient::DeleteAccountApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  api_instance.delete_account_delete(x_account_token)
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling DeleteAccountApi->delete_account_delete: #{e}"
end
```

#### Using the delete_account_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_delete_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_account_delete_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling DeleteAccountApi->delete_account_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

nil (empty response body)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

