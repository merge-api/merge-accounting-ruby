# MergeAccountingClient::AuditLogEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **user_name** | **String** | The User&#39;s full name at the time of this Event occurring. | [optional] |
| **user_email** | **String** | The User&#39;s email at the time of this Event occurring. | [optional] |
| **role** | [**RoleEnum**](RoleEnum.md) | Designates the role of the user (or SYSTEM/API if action not taken by a user) at the time of this Event occurring.  * &#x60;ADMIN&#x60; - ADMIN * &#x60;DEVELOPER&#x60; - DEVELOPER * &#x60;MEMBER&#x60; - MEMBER * &#x60;API&#x60; - API * &#x60;SYSTEM&#x60; - SYSTEM * &#x60;MERGE_TEAM&#x60; - MERGE_TEAM |  |
| **ip_address** | **String** |  |  |
| **event_type** | [**EventTypeEnum**](EventTypeEnum.md) | Designates the type of event that occurred.  * &#x60;CREATED_REMOTE_PRODUCTION_API_KEY&#x60; - CREATED_REMOTE_PRODUCTION_API_KEY * &#x60;DELETED_REMOTE_PRODUCTION_API_KEY&#x60; - DELETED_REMOTE_PRODUCTION_API_KEY * &#x60;CREATED_TEST_API_KEY&#x60; - CREATED_TEST_API_KEY * &#x60;DELETED_TEST_API_KEY&#x60; - DELETED_TEST_API_KEY * &#x60;REGENERATED_PRODUCTION_API_KEY&#x60; - REGENERATED_PRODUCTION_API_KEY * &#x60;INVITED_USER&#x60; - INVITED_USER * &#x60;TWO_FACTOR_AUTH_ENABLED&#x60; - TWO_FACTOR_AUTH_ENABLED * &#x60;TWO_FACTOR_AUTH_DISABLED&#x60; - TWO_FACTOR_AUTH_DISABLED * &#x60;DELETED_LINKED_ACCOUNT&#x60; - DELETED_LINKED_ACCOUNT * &#x60;CREATED_DESTINATION&#x60; - CREATED_DESTINATION * &#x60;DELETED_DESTINATION&#x60; - DELETED_DESTINATION * &#x60;CHANGED_SCOPES&#x60; - CHANGED_SCOPES * &#x60;CHANGED_PERSONAL_INFORMATION&#x60; - CHANGED_PERSONAL_INFORMATION * &#x60;CHANGED_ORGANIZATION_SETTINGS&#x60; - CHANGED_ORGANIZATION_SETTINGS * &#x60;ENABLED_INTEGRATION&#x60; - ENABLED_INTEGRATION * &#x60;DISABLED_INTEGRATION&#x60; - DISABLED_INTEGRATION * &#x60;ENABLED_CATEGORY&#x60; - ENABLED_CATEGORY * &#x60;DISABLED_CATEGORY&#x60; - DISABLED_CATEGORY * &#x60;CHANGED_PASSWORD&#x60; - CHANGED_PASSWORD * &#x60;RESET_PASSWORD&#x60; - RESET_PASSWORD * &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60; - ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION * &#x60;ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60; - ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT * &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION&#x60; - DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION * &#x60;DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT&#x60; - DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT |  |
| **event_description** | **String** |  |  |
| **created_at** | **Time** |  | [optional][readonly] |

## Example

```ruby
require 'merge_accounting_client'

instance = MergeAccountingClient::AuditLogEvent.new(
  id: b5ceea2a-7171-47ce-8090-165cfce5572c,
  user_name: Gil Feig,
  user_email: hello@merge.dev,
  role: ADMIN,
  ip_address: 192.0.2.123,
  event_type: CHANGED_SCOPES,
  event_description: Organization-wide Scopes for model hris.Employee updated from Read to Read+Write,
  created_at: null
)
```

