#!/usr/bin/bash

set -euo pipefail
IFS=$'\n\t'

function dynamic_hosts() {
    app_hosts=$( \
        yc compute instance list --format json \
        | jq 'map(select(.labels.tag == "gitlab"))
        | .[0].network_interfaces[0].primary_v4_address.one_to_one_nat.address'\
    )
    list_hosts "$app_hosts"
}

function list_hosts() {
    printf '{
    "gitlab": {
        "hosts": [%s]
    },
    "_meta": {
        "hostvars": {}
    }
}
' "$1"
}

case ${1-} in
    --list)
        dynamic_hosts;;
    *)
        echo "Usage: ./inventory.sh --list"
esac
