# MergeAccountingClient::SyncStatusApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sync_status_list**](SyncStatusApi.md#sync_status_list) | **GET** /sync-status |  |


## sync_status_list

> <PaginatedSyncStatusList> sync_status_list(opts)



Get syncing status. Possible values: `DISABLED`, `DONE`, `FAILED`, `PAUSED`, `SYNCING`

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

api_instance = MergeAccountingClient::SyncStatusApi.new
opts = {
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.sync_status_list(opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_list: #{e}"
end
```

#### Using the sync_status_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedSyncStatusList>, Integer, Hash)> sync_status_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.sync_status_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedSyncStatusList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |

### Return type

[**PaginatedSyncStatusList**](PaginatedSyncStatusList.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

