#!/bin/bash

# Read endpoint URLs from endpoints.txt
endpoints=$(cat hyperion-endpoints.txt)


hyperion(){
# Loop through each endpoint and execute the find command

for endpoint in $endpoints
do
    find corpus/ -type f -exec bash -c 'echo {}; content=$(cat {} | tr -d "\r\n"); curl -X GET "http://172.16.0.76:7000'"$endpoint"'${content}"' \; >/dev/null
done
}

atomicAPI(){


}
