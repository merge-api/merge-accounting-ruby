# MergeAccountingClient::GenerateKeyApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_key_create**](GenerateKeyApi.md#generate_key_create) | **POST** /generate-key |  |


## generate_key_create

> <RemoteKey> generate_key_create(generate_remote_key_request)



Create a remote key.

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

api_instance = MergeAccountingClient::GenerateKeyApi.new
generate_remote_key_request = MergeAccountingClient::GenerateRemoteKeyRequest.new({name: 'Remote Deployment Key 1'}) # GenerateRemoteKeyRequest | 

begin
  
  result = api_instance.generate_key_create(generate_remote_key_request)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling GenerateKeyApi->generate_key_create: #{e}"
end
```

#### Using the generate_key_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteKey>, Integer, Hash)> generate_key_create_with_http_info(generate_remote_key_request)

```ruby
begin
  
  data, status_code, headers = api_instance.generate_key_create_with_http_info(generate_remote_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteKey>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling GenerateKeyApi->generate_key_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_remote_key_request** | [**GenerateRemoteKeyRequest**](GenerateRemoteKeyRequest.md) |  |  |

### Return type

[**RemoteKey**](RemoteKey.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

