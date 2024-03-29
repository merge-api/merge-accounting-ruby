# MergeAccountingClient::AttachmentsApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attachments_create**](AttachmentsApi.md#attachments_create) | **POST** /attachments |  |
| [**attachments_list**](AttachmentsApi.md#attachments_list) | **GET** /attachments |  |
| [**attachments_meta_post_retrieve**](AttachmentsApi.md#attachments_meta_post_retrieve) | **GET** /attachments/meta/post |  |
| [**attachments_retrieve**](AttachmentsApi.md#attachments_retrieve) | **GET** /attachments/{id} |  |


## attachments_create

> <AccountingAttachmentResponse> attachments_create(x_account_token, accounting_attachment_endpoint_request, opts)



Creates an `AccountingAttachment` object with the given values.

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

api_instance = MergeAccountingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
accounting_attachment_endpoint_request = MergeAccountingClient::AccountingAttachmentEndpointRequest.new({model: MergeAccountingClient::AccountingAttachmentRequest.new}) # AccountingAttachmentEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.attachments_create(x_account_token, accounting_attachment_endpoint_request, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_create: #{e}"
end
```

#### Using the attachments_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountingAttachmentResponse>, Integer, Hash)> attachments_create_with_http_info(x_account_token, accounting_attachment_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_create_with_http_info(x_account_token, accounting_attachment_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountingAttachmentResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **accounting_attachment_endpoint_request** | [**AccountingAttachmentEndpointRequest**](AccountingAttachmentEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**AccountingAttachmentResponse**](AccountingAttachmentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## attachments_list

> <PaginatedAccountingAttachmentList> attachments_list(x_account_token, opts)



Returns a list of `AccountingAttachment` objects.

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

api_instance = MergeAccountingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  company_id: 'company_id_example', # String | If provided, will only return accounting attachments for this company.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.attachments_list(x_account_token, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_list: #{e}"
end
```

#### Using the attachments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAccountingAttachmentList>, Integer, Hash)> attachments_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAccountingAttachmentList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **company_id** | **String** | If provided, will only return accounting attachments for this company. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedAccountingAttachmentList**](PaginatedAccountingAttachmentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## attachments_meta_post_retrieve

> <MetaResponse> attachments_meta_post_retrieve(x_account_token)



Returns metadata for `AccountingAttachment` POSTs.

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

api_instance = MergeAccountingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.attachments_meta_post_retrieve(x_account_token)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_meta_post_retrieve: #{e}"
end
```

#### Using the attachments_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> attachments_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_meta_post_retrieve_with_http_info: #{e}"
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


## attachments_retrieve

> <AccountingAttachment> attachments_retrieve(x_account_token, id, opts)



Returns an `AccountingAttachment` object with the given `id`.

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

api_instance = MergeAccountingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.attachments_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_retrieve: #{e}"
end
```

#### Using the attachments_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountingAttachment>, Integer, Hash)> attachments_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountingAttachment>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**AccountingAttachment**](AccountingAttachment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

