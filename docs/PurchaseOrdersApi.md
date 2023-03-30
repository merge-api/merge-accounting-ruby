# MergeAccountingClient::PurchaseOrdersApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**purchase_orders_create**](PurchaseOrdersApi.md#purchase_orders_create) | **POST** /purchase-orders |  |
| [**purchase_orders_list**](PurchaseOrdersApi.md#purchase_orders_list) | **GET** /purchase-orders |  |
| [**purchase_orders_meta_post_retrieve**](PurchaseOrdersApi.md#purchase_orders_meta_post_retrieve) | **GET** /purchase-orders/meta/post |  |
| [**purchase_orders_retrieve**](PurchaseOrdersApi.md#purchase_orders_retrieve) | **GET** /purchase-orders/{id} |  |


## purchase_orders_create

> <PurchaseOrderResponse> purchase_orders_create(x_account_token, purchase_order_endpoint_request, opts)



Creates a `PurchaseOrder` object with the given values.

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

api_instance = MergeAccountingClient::PurchaseOrdersApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
purchase_order_endpoint_request = MergeAccountingClient::PurchaseOrderEndpointRequest.new({model: MergeAccountingClient::PurchaseOrderRequest.new}) # PurchaseOrderEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.purchase_orders_create(x_account_token, purchase_order_endpoint_request, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_create: #{e}"
end
```

#### Using the purchase_orders_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchaseOrderResponse>, Integer, Hash)> purchase_orders_create_with_http_info(x_account_token, purchase_order_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.purchase_orders_create_with_http_info(x_account_token, purchase_order_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchaseOrderResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **purchase_order_endpoint_request** | [**PurchaseOrderEndpointRequest**](PurchaseOrderEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**PurchaseOrderResponse**](PurchaseOrderResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## purchase_orders_list

> <PaginatedPurchaseOrderList> purchase_orders_list(x_account_token, opts)



Returns a list of `PurchaseOrder` objects.

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

api_instance = MergeAccountingClient::PurchaseOrdersApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  company_id: 'company_id_example', # String | If provided, will only return purchase orders for this company.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  issue_date_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  issue_date_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'status', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  show_enum_origins: 'status' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.purchase_orders_list(x_account_token, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_list: #{e}"
end
```

#### Using the purchase_orders_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPurchaseOrderList>, Integer, Hash)> purchase_orders_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.purchase_orders_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPurchaseOrderList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **company_id** | **String** | If provided, will only return purchase orders for this company. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **issue_date_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **issue_date_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**PaginatedPurchaseOrderList**](PaginatedPurchaseOrderList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchase_orders_meta_post_retrieve

> <MetaResponse> purchase_orders_meta_post_retrieve(x_account_token)



Returns metadata for `PurchaseOrder` POSTs.

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

api_instance = MergeAccountingClient::PurchaseOrdersApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.purchase_orders_meta_post_retrieve(x_account_token)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_meta_post_retrieve: #{e}"
end
```

#### Using the purchase_orders_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> purchase_orders_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.purchase_orders_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_meta_post_retrieve_with_http_info: #{e}"
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


## purchase_orders_retrieve

> <PurchaseOrder> purchase_orders_retrieve(x_account_token, id, opts)



Returns a `PurchaseOrder` object with the given `id`.

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

api_instance = MergeAccountingClient::PurchaseOrdersApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'status', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'status' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.purchase_orders_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_retrieve: #{e}"
end
```

#### Using the purchase_orders_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchaseOrder>, Integer, Hash)> purchase_orders_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.purchase_orders_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchaseOrder>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling PurchaseOrdersApi->purchase_orders_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

