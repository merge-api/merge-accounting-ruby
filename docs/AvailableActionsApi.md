# MergeAccountingClient::AvailableActionsApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**available_actions_retrieve**](AvailableActionsApi.md#available_actions_retrieve) | **GET** /available-actions |  |


## available_actions_retrieve

> <AvailableActions> available_actions_retrieve



Returns a list of models and actions available for an account.

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

api_instance = MergeAccountingClient::AvailableActionsApi.new

begin
  
  result = api_instance.available_actions_retrieve
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AvailableActionsApi->available_actions_retrieve: #{e}"
end
```

#### Using the available_actions_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableActions>, Integer, Hash)> available_actions_retrieve_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.available_actions_retrieve_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableActions>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling AvailableActionsApi->available_actions_retrieve_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AvailableActions**](AvailableActions.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

