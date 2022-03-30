# MergeAccountingClient::WarningValidationProblem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**ValidationProblemSource**](ValidationProblemSource.md) |  | [optional] |
| **title** | **String** |  |  |
| **detail** | **String** |  |  |
| **problem_type** | **String** |  |  |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::WarningValidationProblem.new(
  source: null,
  title: Unrecognized Field,
  detail: An unrecognized field, age, was passed in with request data.,
  problem_type: UNRECOGNIZED_FIELD
)
```

