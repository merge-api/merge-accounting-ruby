# MergeAccountingClient::JournalEntriesApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**journal_entries_create**](JournalEntriesApi.md#journal_entries_create) | **POST** /journal-entries |  |
| [**journal_entries_list**](JournalEntriesApi.md#journal_entries_list) | **GET** /journal-entries |  |
| [**journal_entries_meta_post_retrieve**](JournalEntriesApi.md#journal_entries_meta_post_retrieve) | **GET** /journal-entries/meta/post |  |
| [**journal_entries_retrieve**](JournalEntriesApi.md#journal_entries_retrieve) | **GET** /journal-entries/{id} |  |


## journal_entries_create

> <JournalEntryResponse> journal_entries_create(x_account_token, journal_entry_endpoint_request, opts)



Creates a `JournalEntry` object with the given values.

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

api_instance = MergeAccountingClient::JournalEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
journal_entry_endpoint_request = MergeAccountingClient::JournalEntryEndpointRequest.new({model: MergeAccountingClient::JournalEntryRequest.new}) # JournalEntryEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.journal_entries_create(x_account_token, journal_entry_endpoint_request, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_create: #{e}"
end
```

#### Using the journal_entries_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JournalEntryResponse>, Integer, Hash)> journal_entries_create_with_http_info(x_account_token, journal_entry_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.journal_entries_create_with_http_info(x_account_token, journal_entry_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JournalEntryResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **journal_entry_endpoint_request** | [**JournalEntryEndpointRequest**](JournalEntryEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**JournalEntryResponse**](JournalEntryResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## journal_entries_list

> <PaginatedJournalEntryList> journal_entries_list(x_account_token, opts)



Returns a list of `JournalEntry` objects.

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

api_instance = MergeAccountingClient::JournalEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'lines', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.journal_entries_list(x_account_token, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_list: #{e}"
end
```

#### Using the journal_entries_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedJournalEntryList>, Integer, Hash)> journal_entries_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.journal_entries_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedJournalEntryList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedJournalEntryList**](PaginatedJournalEntryList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## journal_entries_meta_post_retrieve

> <MetaResponse> journal_entries_meta_post_retrieve(x_account_token)



Returns metadata for `JournalEntry` POSTs.

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

api_instance = MergeAccountingClient::JournalEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.journal_entries_meta_post_retrieve(x_account_token)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_meta_post_retrieve: #{e}"
end
```

#### Using the journal_entries_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> journal_entries_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.journal_entries_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_meta_post_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## journal_entries_retrieve

> <JournalEntry> journal_entries_retrieve(x_account_token, id, opts)



Returns a `JournalEntry` object with the given `id`.

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

api_instance = MergeAccountingClient::JournalEntriesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'lines', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.journal_entries_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_retrieve: #{e}"
end
```

#### Using the journal_entries_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JournalEntry>, Integer, Hash)> journal_entries_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.journal_entries_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JournalEntry>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling JournalEntriesApi->journal_entries_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**JournalEntry**](JournalEntry.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

