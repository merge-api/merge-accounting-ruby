# MergeAccountingClient::CompanyInfoApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**company_info_list**](CompanyInfoApi.md#company_info_list) | **GET** /company-info |  |
| [**company_info_retrieve**](CompanyInfoApi.md#company_info_retrieve) | **GET** /company-info/{id} |  |


## company_info_list

> <PaginatedCompanyInfoList> company_info_list(x_account_token, opts)



Returns a list of `CompanyInfo` objects.

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

api_instance = MergeAccountingClient::CompanyInfoApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'addresses', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.company_info_list(x_account_token, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CompanyInfoApi->company_info_list: #{e}"
end
```

#### Using the company_info_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCompanyInfoList>, Integer, Hash)> company_info_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.company_info_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCompanyInfoList>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CompanyInfoApi->company_info_list_with_http_info: #{e}"
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
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedCompanyInfoList**](PaginatedCompanyInfoList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## company_info_retrieve

> <CompanyInfo> company_info_retrieve(x_account_token, id, opts)



Returns a `CompanyInfo` object with the given `id`.

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

api_instance = MergeAccountingClient::CompanyInfoApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'addresses', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.company_info_retrieve(x_account_token, id, opts)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CompanyInfoApi->company_info_retrieve: #{e}"
end
```

#### Using the company_info_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyInfo>, Integer, Hash)> company_info_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.company_info_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyInfo>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling CompanyInfoApi->company_info_retrieve_with_http_info: #{e}"
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

[**CompanyInfo**](CompanyInfo.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

