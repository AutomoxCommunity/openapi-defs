$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
}
$url = "https://console.automox.com/api/policies?o=9999"
$body = @"
{
  "name": "Patch All Policy",
  "policy_type_name": "patch",
  "organization_id": 9999,
  "schedule_days": 42,
  "schedule_weeks_of_month": 20,
  "schedule_months": 4680,
  "schedule_time": "12:00",
  "configuration": {
      "auto_patch": true,
      "notify_user": true,
      "auto_reboot": true,
      "patch_rule": "all",
      "filter_type": "all",
      "missed_patch_window": false,
      "device_filters_enabled": true,
      "device_filters": [
          {
              "field": "tag",
              "op": "in",
              "value": [
                  "Windows",
                  "Win10"
              ]
          }
      ],
      "secrets": {
          "my_secret_name": {
            "id": "705d95c8-659a-4344-8fab-5470cbf077e6"
          }
      },
      "include_optional": true,
      "notify_reboot_user": true,
      "notify_deferred_reboot_user": true,
      "custom_notification_patch_message": "Important updates are going to be installed!",
      "custom_notification_patch_message_mac": "Important updates are going to be installed!",
      "custom_notification_reboot_message": "Reboot needed to finish installing updates!",
      "custom_notification_reboot_message_mac": "Reboot needed to finish installing updates!",
      "custom_notification_max_delays": 3,
      "custom_notification_deferment_periods": [
          1,
          4,
          8
      ],
      "custom_pending_reboot_notification_message": "Your computer needs to reboot to install updates!",
      "custom_pending_reboot_notification_message_mac": "Your computer needs to reboot to install updates!",
      "custom_pending_reboot_notification_deferment_periods": [
          1,
          4,
          8
      ],
      "notify_user_message_timeout": 15,
      "notify_deferred_reboot_user_message_timeout": 15,
      "notify_user_auto_deferral_enabled": true,
      "notify_deferred_reboot_user_auto_deferral_enabled": true
  },
  "notify_user": true,
  "server_groups": [
      250624,
      90125
  ],
  "notes": "Here are some notes"
}
"@
Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body
