#!/usr/bin/env bash

while read f; do
  url=$(echo $f | grep -o -E '/(geocoding)/[^ |"]+')
  host="host:port"
  req="$host$url"
  curl -sL -w "%{http_code} %{url_effective}\\n" "$req" -o /dev/null
done <logs-to-replay.txt
