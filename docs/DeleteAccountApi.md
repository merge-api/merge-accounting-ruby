# MergeAccountingClient::DeleteAccountApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_account_create**](DeleteAccountApi.md#delete_account_create) | **POST** /delete-account |  |


## delete_account_create

> delete_account_create



Delete a linked account.

### Examples

```ruby
require 'time'
require 'merge_accounting_client'
# setup authorization
MergeAccountingClient.configure do |config|
  # Configure API key authorization: accountTokenAuth
  config.api_key['accountTokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['accountTokenAuth'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeAccountingClient::DeleteAccountApi.new

begin
  
  api_instance.delete_account_create
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling DeleteAccountApi->delete_account_create: #{e}"
end
```

#### Using the delete_account_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_account_create_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.delete_account_create_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling DeleteAccountApi->delete_account_create_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

