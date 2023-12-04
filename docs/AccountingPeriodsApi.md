# MergeAccountingClient::AccountingPeriodsApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accounting_periods_list**](AccountingPeriodsApi.md#accounting_periods_list) | **GET** /accounting-periods |  |
| [**accounting_periods_retrieve**](AccountingPeriodsApi.md#accounting_periods_retrieve) | **GET** /accounting-periods/{id} |  |


## accounting_periods_list

> <PaginatedAccountingPeriodList> accounting_periods_list(x_account_token, opts)



Returns a list of `AccountingPeriod` objects.

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

api_instance = MergeAccountingClient::AccountingPeriodsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.accounting_periods_list(x_account_token, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AccountingPeriodsApi->accounting_periods_list: #{e}"
end
```

#### Using the accounting_periods_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAccountingPeriodList>, Integer, Hash)> accounting_periods_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.accounting_periods_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAccountingPeriodList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AccountingPeriodsApi->accounting_periods_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |

### Return type

[**PaginatedAccountingPeriodList**](PaginatedAccountingPeriodList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## accounting_periods_retrieve

> <AccountingPeriod> accounting_periods_retrieve(x_account_token, id, opts)



Returns an `AccountingPeriod` object with the given `id`.

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

api_instance = MergeAccountingClient::AccountingPeriodsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.accounting_periods_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AccountingPeriodsApi->accounting_periods_retrieve: #{e}"
end
```

#### Using the accounting_periods_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountingPeriod>, Integer, Hash)> accounting_periods_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.accounting_periods_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountingPeriod>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AccountingPeriodsApi->accounting_periods_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**AccountingPeriod**](AccountingPeriod.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

