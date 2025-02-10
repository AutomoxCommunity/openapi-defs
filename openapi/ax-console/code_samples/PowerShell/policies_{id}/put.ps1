$apiKey = 'your_automox_api_key'
$headers = @{
    "Authorization" = "Bearer $apiKey"
    "Content-Type" = "application/json"
  }
$url = "https://console.automox.com/api/policies/12345?o=0000"
$body = @"
  {
    "name": "API Created",
    "policy_type_name": "patch",
    "organization_id": 0000,
    "configuration": {
      "auto_patch": false,
      "auto_reboot": true,
      "notify_reboot_user": true,
      "notify_user": true,
      "missed_patch_window": true,
      "patch_rule": "advanced",
      "filters": ["*KB2267602*","*Exclude This Too*"],
      "severity_filter": ["low","medium","high","critical","none","unknown"],
      "include_optional": true,
      "custom_notification_patch_message": "Notification Text before normal patch - Windows - Max 125 Char",
      "custom_notification_reboot_message": "Notification Text before reboot patch - Windows - Max 125 Char",
      "custom_notification_patch_message_mac": "Notification Text before normal patch - Mac - Max 70 Char",
      "custom_notification_reboot_message_mac": "Notification Text before reboot patch - Mac - Max 70 Char",
      "custom_notification_max_delays": 3,
      "custom_notification_deferment_periods": [1, 4, 8],
      "notify_user_message_timeout": 120,
      "notify_user_auto_deferral_enabled": false,
      "notify_deferred_reboot_user_message_timeout": 120,
      "notify_deferred_reboot_user_auto_deferral_enabled": true,
      "advanced_filter": [
              {
                  "left": "patch-source",
                  "right": "windowsupdate",
                  "condition": "is"
              },
              {
                  "left": "severity",
                  "right": "medium",
                  "condition": "greater-than-or-equal-to"
              }
          ],
          "device_filters": [
              {
                  "field": "os_family",
                  "op": "in",
                  "value": ["Windows"]
              },
              {
                  "field": "hostname",
                  "op": "like_any",
                  "value": ["WinDev2104Eval"]
              }
            ],
    },
    "secrets": {
          "my_secret_name": {
            "id": "705d95c8-659a-4344-8fab-5470cbf077e6"
          }
      },
    "schedule_days": 146,
    "schedule_weeks_of_month": 42,
    "schedule_months": 4162,
    "schedule_time": "01:00",
    "notes": "Patch every Mon,Thu,Fri\n1st,3rd,5th Week\nJan,Jun,Dec",
    "server_groups": [
      250624,
      90125
    ]
  }
  "@
Invoke-WebRequest -Method Put -Uri $url -Headers $headers -Body $body
