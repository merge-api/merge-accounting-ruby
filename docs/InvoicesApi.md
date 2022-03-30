# MergeAccountingClient::InvoicesApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**invoices_create**](InvoicesApi.md#invoices_create) | **POST** /invoices |  |
| [**invoices_list**](InvoicesApi.md#invoices_list) | **GET** /invoices |  |
| [**invoices_meta_post_retrieve**](InvoicesApi.md#invoices_meta_post_retrieve) | **GET** /invoices/meta/post |  |
| [**invoices_retrieve**](InvoicesApi.md#invoices_retrieve) | **GET** /invoices/{id} |  |


## invoices_create

> <InvoiceResponse> invoices_create(x_account_token, invoice_endpoint_request, opts)



Creates an `Invoice` object with the given values.

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

api_instance = MergeAccountingClient::InvoicesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
invoice_endpoint_request = MergeAccountingClient::InvoiceEndpointRequest.new({model: MergeAccountingClient::InvoiceRequest.new}) # InvoiceEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.invoices_create(x_account_token, invoice_endpoint_request, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_create: #{e}"
end
```

#### Using the invoices_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceResponse>, Integer, Hash)> invoices_create_with_http_info(x_account_token, invoice_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.invoices_create_with_http_info(x_account_token, invoice_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **invoice_endpoint_request** | [**InvoiceEndpointRequest**](InvoiceEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**InvoiceResponse**](InvoiceResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## invoices_list

> <PaginatedInvoiceList> invoices_list(x_account_token, opts)



Returns a list of `Invoice` objects.

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

api_instance = MergeAccountingClient::InvoicesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  contact_id: 'contact_id_example', # String | If provided, will only return invoices for this contact.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'contact', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was deleted in the third-party service.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  type: 'type_example' # String | If provided, will only return Invoices with this type
}

begin
  
  result = api_instance.invoices_list(x_account_token, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_list: #{e}"
end
```

#### Using the invoices_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedInvoiceList>, Integer, Hash)> invoices_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.invoices_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedInvoiceList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **contact_id** | **String** | If provided, will only return invoices for this contact. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was deleted in the third-party service. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **type** | **String** | If provided, will only return Invoices with this type | [optional] |

### Return type

[**PaginatedInvoiceList**](PaginatedInvoiceList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoices_meta_post_retrieve

> <MetaResponse> invoices_meta_post_retrieve(x_account_token)



Returns metadata for `Invoice` POSTs.

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

api_instance = MergeAccountingClient::InvoicesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.invoices_meta_post_retrieve(x_account_token)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_meta_post_retrieve: #{e}"
end
```

#### Using the invoices_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> invoices_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.invoices_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_meta_post_retrieve_with_http_info: #{e}"
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


## invoices_retrieve

> <Invoice> invoices_retrieve(x_account_token, id, opts)



Returns an `Invoice` object with the given `id`.

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

api_instance = MergeAccountingClient::InvoicesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'contact', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.invoices_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_retrieve: #{e}"
end
```

#### Using the invoices_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Invoice>, Integer, Hash)> invoices_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.invoices_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Invoice>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling InvoicesApi->invoices_retrieve_with_http_info: #{e}"
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

[**Invoice**](Invoice.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

