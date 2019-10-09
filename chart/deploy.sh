#!/usr/bin/env bash
if [[ ! $CIRCLECI = true ]]; then
    cd ../../config && source export.sh && cd ../coppa/chart
fi

# Export secrets in a .env file, if any
if [[ -f "../.env" ]]; then
    while read e || [ -n "$e" ]; do
        # If it's not a comment or empty line, export it
        if [[ ! $e =~ ^# && ! -z $e ]]; then
            export $e
            echo "Exported $e"
        fi
    done < "../.env"
fi

# Substitute environment variables in the template file
envsubst < values.tpl > values.yaml

# Upgrade  the Chart if it already exists, install otherwise
helm upgrade --install --force --atomic --recreate-pods --namespace coppa coppa .
