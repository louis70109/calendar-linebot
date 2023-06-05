echo '--------------------------\n'

post_response=$(curl -s -X PUT \
-H "Authorization: Bearer $1" \
-H 'Content-Type:application/json' \
-d '{"endpoint":"'$2'"}' \
https://api.line.me/v2/bot/channel/webhook/endpoint)

echo $post_response
echo '\n--------------------------\n'
curl -X GET \
-H "Authorization: Bearer $1" \
-H 'Content-Type:application/json' \
https://api.line.me/v2/bot/channel/webhook/endpoint

echo '\n-------------------------\n'
curl -X POST \
-H "Authorization: Bearer $1" \
-H 'Content-Type:application/json' \
-d '{"endpoint":"'$2'"}' \
https://api.line.me/v2/bot/channel/webhook/test