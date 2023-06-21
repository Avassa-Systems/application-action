#!/bin/sh -l

set -eu

ct="$1"
username="$2"
password="$3"
app_name="$4"
app_spec="$5"

curl -OL "https://$ct/supctl"
chmod +x ./supctl

echo "$password" | ./supctl --host="$ct" "do" login "$username" > /dev/null

./supctl replace applications "$app_name" < "$app_spec"
