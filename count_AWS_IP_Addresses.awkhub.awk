curl -s https://ip-ranges.amazonaws.com/ip-ranges.json  | jq -r '.prefixes[].ip_prefix' | awk -F'/' $'{count += 2^(32-$2)} END {printf "%\'d\\n",count}'
