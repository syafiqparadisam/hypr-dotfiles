#!/bin/bash

cache_file="/tmp/ipinfo_cache"

if ! ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "No internet"
    exit 0
fi

# Fetch baru kalau file lebih dari 10 menit
if [[ ! -f "$cache_file" || $(find "$cache_file" -mmin +1) ]]; then
    curl -s http://ip-api.com/json > "$cache_file"
fi

response=$(cat "$cache_file")
ip=$(echo "$response" | jq -r '.query')
city=$(echo "$response" | jq -r '.city')
country=$(echo "$response" | jq -r '.country')


echo "$city, $country"
