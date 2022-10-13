# MergeAccountingClient::WebhookReceiversApi

All URIs are relative to *https://api.merge.dev/api/accounting/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_receivers_create**](WebhookReceiversApi.md#webhook_receivers_create) | **POST** /webhook-receivers |  |
| [**webhook_receivers_list**](WebhookReceiversApi.md#webhook_receivers_list) | **GET** /webhook-receivers |  |


## webhook_receivers_create

> <WebhookReceiver> webhook_receivers_create(webhook_receiver_request)



Creates a `WebhookReceiver` object with the given values.

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

api_instance = MergeAccountingClient::WebhookReceiversApi.new
webhook_receiver_request = MergeAccountingClient::WebhookReceiverRequest.new({event: 'event_example', is_active: false}) # WebhookReceiverRequest | 

begin
  
  result = api_instance.webhook_receivers_create(webhook_receiver_request)
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_create: #{e}"
end
```

#### Using the webhook_receivers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookReceiver>, Integer, Hash)> webhook_receivers_create_with_http_info(webhook_receiver_request)

```ruby
begin
  
  data, status_code, headers = api_instance.webhook_receivers_create_with_http_info(webhook_receiver_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookReceiver>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_receiver_request** | [**WebhookReceiverRequest**](WebhookReceiverRequest.md) |  |  |

### Return type

[**WebhookReceiver**](WebhookReceiver.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## webhook_receivers_list

> <Array<WebhookReceiver>> webhook_receivers_list



Returns a list of `WebhookReceiver` objects.

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

api_instance = MergeAccountingClient::WebhookReceiversApi.new

begin
  
  result = api_instance.webhook_receivers_list
  p result
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_list: #{e}"
end
```

#### Using the webhook_receivers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WebhookReceiver>>, Integer, Hash)> webhook_receivers_list_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.webhook_receivers_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WebhookReceiver>>
rescue MergeAccountingClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;WebhookReceiver&gt;**](WebhookReceiver.md)

### Authorization

[accountTokenAuth](../README.md#accountTokenAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

