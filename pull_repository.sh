#!/bin/bash

(
        # Check if both username and password are provided
        if [ $# -ne 5 ]; then
            echo "Usage: $0 <hostname> <port> <username> <password> <repository_name>"
            exit 1
        fi

                # Input parameters
                USERNAME="$3"
                PASSWORD="$4"
                HOST="$1"
                PORT="$2"
                REPO="$5"

                # Authentication API Endpoint
                BASE_URL="https://$HOST:$PORT/api/v1"
                AUTH_URL="$BASE_URL/auth/login"
                PULL_URL="$BASE_URL/repo/pull/$REPO"

                # Step 1: Obtain the authentication token
                auth_response=$(curl -s -k -X POST \
                                   -u "$USERNAME:$PASSWORD" \
                                   "$AUTH_URL")

                # Extract the token from the response (assuming the token is in JSON format)
                token=$(echo "$auth_response" | jq -r '.token')

                if [ -z "$token" ]; then
                        echo "Authentication failed or token not found."
                        exit 1
                fi

                # Step 2: Perform the POST request with Bearer token header
                response=$(curl -s -k -X POST \
                                -H "Authorization: Bearer $token" \
                                -H "Content-Type: application/json" \
                                -d "" \
                                "$PULL_URL")
                
                # Extract status from the response
                status=$(echo "$response" | jq -r '.status')

                # Check if status is "success"
                if [ "$status" == "success" ]; then
                        # Extract output from the response
                        output=$(echo "$response" | jq -r '.data.output')
                        echo "Output: $output"
                else
                        # Extract error from the response
                        error=$(echo "$response" | jq -r '.data.error')
                        echo "Error: $error"
                fi
)
