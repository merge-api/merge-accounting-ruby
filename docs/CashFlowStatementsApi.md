# MergeAccountingClient::CashFlowStatementsApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cash_flow_statements_list**](CashFlowStatementsApi.md#cash_flow_statements_list) | **GET** /cash-flow-statements |  |
| [**cash_flow_statements_retrieve**](CashFlowStatementsApi.md#cash_flow_statements_retrieve) | **GET** /cash-flow-statements/{id} |  |


## cash_flow_statements_list

> <PaginatedCashFlowStatementList> cash_flow_statements_list(opts)



Returns a list of `CashFlowStatement` objects.

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

api_instance = MergeAccountingClient::CashFlowStatementsApi.new
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.cash_flow_statements_list(opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CashFlowStatementsApi->cash_flow_statements_list: #{e}"
end
```

#### Using the cash_flow_statements_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCashFlowStatementList>, Integer, Hash)> cash_flow_statements_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.cash_flow_statements_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCashFlowStatementList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CashFlowStatementsApi->cash_flow_statements_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedCashFlowStatementList**](PaginatedCashFlowStatementList.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cash_flow_statements_retrieve

> <CashFlowStatement> cash_flow_statements_retrieve(id, opts)



Returns a `CashFlowStatement` object with the given `id`.

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

api_instance = MergeAccountingClient::CashFlowStatementsApi.new
id = TODO # String | 
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.cash_flow_statements_retrieve(id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CashFlowStatementsApi->cash_flow_statements_retrieve: #{e}"
end
```

#### Using the cash_flow_statements_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashFlowStatement>, Integer, Hash)> cash_flow_statements_retrieve_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.cash_flow_statements_retrieve_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashFlowStatement>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CashFlowStatementsApi->cash_flow_statements_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**CashFlowStatement**](CashFlowStatement.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

