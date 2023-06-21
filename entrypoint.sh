#!/bin/sh -l

set -eu

ct="$1"
username="$2"
password="$3"
app_name="$4"
app_spec="$5"

echo "Download supctl"
curl -s -f -OL "https://$ct/supctl"
chmod +x ./supctl

echo "Login"
echo "$password" | ./supctl --host="$ct" "do" login "$username" > /dev/null

echo "Send application spec $app_spec"
./supctl replace applications "$app_name" < "$app_spec"
