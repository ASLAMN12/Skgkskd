import 'package:flutter/material.dart';
new
npx prisma generate
npx prisma db push
npm run dev
SMS_MODE="twilio"
TWILIO_ACCOUNT_SID="ضع_account_sid_هنا"
TWILIO_AUTH_TOKEN="ضع_auth_token_هنا"
TWILIO_FROM_NUMBER="ضع_رقم_المرسل_هنا"
DATABASE_URL="ضع_رابط_قاعدة_البيانات_هنا"curl -X POST https://api.sent.dm/v3/messages \
  -H "x-api-key: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx" \
  -H "Content-Type: application/json" \
  -d '{
    "to": ["+14155551234"],
    "template": { "name": "order_confirmation", "parameters": { "name": "John" } }
  }'{
  "success": true,
  "data": {
    "status": "QUEUED",
    "template_id": "7ba7b820-9dad-11d1-80b4-00c04fd430c8",
    "template_name": "order_confirmation",
    "recipients": [
      {
        "message_id": "8ba7b830-9dad-11d1-80b4-00c04fd430c8",
        "to": "+14155551234",
        "channel": "sent",
        "body": "Hi John, your order has been confirmed."
      }
    ]
  },
  "error": null,
  "meta": {
    "request_id": "req_7X9zKp2jDw",
    "timestamp": "2026-07-25T10:30:00Z",
    "version": "v3"
  }
}