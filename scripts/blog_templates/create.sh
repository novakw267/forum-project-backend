API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/blog_templates"
curl "${API}${URL_PATH}" \
  --include \
  --request POST\
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "blog_template": {
      "blog_title": "'"${blog_title}"'",
      "subject": "'"${subject}"'",
      "body": "'"${body}"'"
    }
  }'
