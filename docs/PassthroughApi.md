# MergeAccountingClient::PassthroughApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**passthrough_create**](PassthroughApi.md#passthrough_create) | **POST** /passthrough |  |


## passthrough_create

> <RemoteResponse> passthrough_create(x_account_token, data_passthrough_request)



Pull data from an endpoint not currently supported by Merge.

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

api_instance = MergeAccountingClient::PassthroughApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
data_passthrough_request = MergeAccountingClient::DataPassthroughRequest.new({method: MergeAccountingClient::MethodEnum::GET, path: '/scooters'}) # DataPassthroughRequest | 

begin
  
  result = api_instance.passthrough_create(x_account_token, data_passthrough_request)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PassthroughApi->passthrough_create: #{e}"
end
```

#### Using the passthrough_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteResponse>, Integer, Hash)> passthrough_create_with_http_info(x_account_token, data_passthrough_request)

```ruby
begin
  
  data, status_code, headers = api_instance.passthrough_create_with_http_info(x_account_token, data_passthrough_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PassthroughApi->passthrough_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **data_passthrough_request** | [**DataPassthroughRequest**](DataPassthroughRequest.md) |  |  |

### Return type

[**RemoteResponse**](RemoteResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

