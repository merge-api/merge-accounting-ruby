# MergeAccountingClient::ForceResyncApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sync_status_resync_create**](ForceResyncApi.md#sync_status_resync_create) | **POST** /sync-status/resync |  |


## sync_status_resync_create

> <Array<SyncStatus>> sync_status_resync_create



Force re-sync of all models. This is only available for organizations on Merge's Grow and Expand plans.

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

api_instance = MergeAccountingClient::ForceResyncApi.new

begin
  
  result = api_instance.sync_status_resync_create
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling ForceResyncApi->sync_status_resync_create: #{e}"
end
```

#### Using the sync_status_resync_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SyncStatus>>, Integer, Hash)> sync_status_resync_create_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.sync_status_resync_create_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SyncStatus>>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling ForceResyncApi->sync_status_resync_create_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SyncStatus&gt;**](SyncStatus.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

