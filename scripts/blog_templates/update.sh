#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/blog_templates/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH\
  --header "Content-Type: application/json" \
  --data '{
    "blog_template": {
      "blog_title": "'"${BLOG_TITLE}"'",
      "subject": "'"${SUBJECT}"'",
      "body": "'"${BODY}"'"
    }
  }'
  #\
  # --header "Authorization: Token token=$TOKEN"

echo
