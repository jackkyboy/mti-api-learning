#!/bin/bash

# API Endpoint
URL="https://api-uat.muangthaiinsurance.com/cancellation/Cancellation/CreateCancellation"

# ดึงค่าจากไฟล์ .env
source .env

curl -v -X POST "$URL" \
-H "apikey: $API_KEY" \
-H "Authorization: $AUTHORIZATION" \
-H "Content-Type: application/json" \
-d "$DATA"

# Data Payload
DATA=$(cat <<EOF
{
    "PolicyID": "123456789",
    "Reason": "Customer Request"
}
EOF
)

# ส่ง POST Request
curl -v -X POST "$URL" \
-H "apikey: $API_KEY" \
-H "Authorization: $AUTHORIZATION" \
-H "Content-Type: application/json" \
-d "$DATA"

