# MergeAccountingClient::TaxRatesApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tax_rates_list**](TaxRatesApi.md#tax_rates_list) | **GET** /tax-rates |  |
| [**tax_rates_retrieve**](TaxRatesApi.md#tax_rates_retrieve) | **GET** /tax-rates/{id} |  |


## tax_rates_list

> <PaginatedTaxRateList> tax_rates_list(opts)



Returns a list of `TaxRate` objects.

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

api_instance = MergeAccountingClient::TaxRatesApi.new
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
  
  result = api_instance.tax_rates_list(opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling TaxRatesApi->tax_rates_list: #{e}"
end
```

#### Using the tax_rates_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTaxRateList>, Integer, Hash)> tax_rates_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tax_rates_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTaxRateList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling TaxRatesApi->tax_rates_list_with_http_info: #{e}"
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

[**PaginatedTaxRateList**](PaginatedTaxRateList.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tax_rates_retrieve

> <TaxRate> tax_rates_retrieve(id, opts)



Returns a `TaxRate` object with the given `id`.

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

api_instance = MergeAccountingClient::TaxRatesApi.new
id = TODO # String | 
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.tax_rates_retrieve(id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling TaxRatesApi->tax_rates_retrieve: #{e}"
end
```

#### Using the tax_rates_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxRate>, Integer, Hash)> tax_rates_retrieve_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tax_rates_retrieve_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxRate>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling TaxRatesApi->tax_rates_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) |  |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**TaxRate**](TaxRate.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

