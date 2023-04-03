# MergeAccountingClient::PaymentsApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**payments_create**](PaymentsApi.md#payments_create) | **POST** /payments |  |
| [**payments_list**](PaymentsApi.md#payments_list) | **GET** /payments |  |
| [**payments_meta_post_retrieve**](PaymentsApi.md#payments_meta_post_retrieve) | **GET** /payments/meta/post |  |
| [**payments_retrieve**](PaymentsApi.md#payments_retrieve) | **GET** /payments/{id} |  |


## payments_create

> <PaymentResponse> payments_create(x_account_token, payment_endpoint_request, opts)



Creates a `Payment` object with the given values.

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

api_instance = MergeAccountingClient::PaymentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
payment_endpoint_request = MergeAccountingClient::PaymentEndpointRequest.new({model: MergeAccountingClient::PaymentRequest.new}) # PaymentEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.payments_create(x_account_token, payment_endpoint_request, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_create: #{e}"
end
```

#### Using the payments_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentResponse>, Integer, Hash)> payments_create_with_http_info(x_account_token, payment_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.payments_create_with_http_info(x_account_token, payment_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **payment_endpoint_request** | [**PaymentEndpointRequest**](PaymentEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**PaymentResponse**](PaymentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## payments_list

> <PaginatedPaymentList> payments_list(x_account_token, opts)



Returns a list of `Payment` objects.

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

api_instance = MergeAccountingClient::PaymentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  account_id: 'account_id_example', # String | If provided, will only return payments for this account.
  company_id: 'company_id_example', # String | If provided, will only return payments for this company.
  contact_id: 'contact_id_example', # String | If provided, will only return payments for this contact.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  transaction_date_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  transaction_date_before: Time.parse('2013-10-20T19:20:30+01:00') # Time | If provided, will only return objects created before this datetime.
}

begin
  
  result = api_instance.payments_list(x_account_token, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_list: #{e}"
end
```

#### Using the payments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPaymentList>, Integer, Hash)> payments_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.payments_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPaymentList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **account_id** | **String** | If provided, will only return payments for this account. | [optional] |
| **company_id** | **String** | If provided, will only return payments for this company. | [optional] |
| **contact_id** | **String** | If provided, will only return payments for this contact. | [optional] |
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
| **transaction_date_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **transaction_date_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |

### Return type

[**PaginatedPaymentList**](PaginatedPaymentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payments_meta_post_retrieve

> <MetaResponse> payments_meta_post_retrieve(x_account_token)



Returns metadata for `Payment` POSTs.

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

api_instance = MergeAccountingClient::PaymentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.payments_meta_post_retrieve(x_account_token)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_meta_post_retrieve: #{e}"
end
```

#### Using the payments_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> payments_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.payments_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_meta_post_retrieve_with_http_info: #{e}"
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


## payments_retrieve

> <Payment> payments_retrieve(x_account_token, id, opts)



Returns a `Payment` object with the given `id`.

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

api_instance = MergeAccountingClient::PaymentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.payments_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_retrieve: #{e}"
end
```

#### Using the payments_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Payment>, Integer, Hash)> payments_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.payments_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Payment>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PaymentsApi->payments_retrieve_with_http_info: #{e}"
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

[**Payment**](Payment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

