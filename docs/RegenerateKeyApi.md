# MergeAccountingClient::RegenerateKeyApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**regenerate_key_create**](RegenerateKeyApi.md#regenerate_key_create) | **POST** /regenerate-key |  |


## regenerate_key_create

> <RemoteKey> regenerate_key_create(remote_key_for_regeneration_request)



Exchange remote keys.

### Examples

```ruby
require 'time'
require 'merge_accounting_client'
# setup authorization
MergeAccountingClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MergeAccountingClient::RegenerateKeyApi.new
remote_key_for_regeneration_request = MergeAccountingClient::RemoteKeyForRegenerationRequest.new({name: 'Remote Deployment Key 1'}) # RemoteKeyForRegenerationRequest | 

begin
  
  result = api_instance.regenerate_key_create(remote_key_for_regeneration_request)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling RegenerateKeyApi->regenerate_key_create: #{e}"
end
```

#### Using the regenerate_key_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteKey>, Integer, Hash)> regenerate_key_create_with_http_info(remote_key_for_regeneration_request)

```ruby
begin
  
  data, status_code, headers = api_instance.regenerate_key_create_with_http_info(remote_key_for_regeneration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteKey>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling RegenerateKeyApi->regenerate_key_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_key_for_regeneration_request** | [**RemoteKeyForRegenerationRequest**](RemoteKeyForRegenerationRequest.md) |  |  |

### Return type

[**RemoteKey**](RemoteKey.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

