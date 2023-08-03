#!/bin/bash

(
        # Check if both username and password are provided
        if [ $# -ne 4 ]; then
            echo "Usage: $0 <hostname> <port> <username> <password>"
            exit 1
        fi

                # Input parameters
                USERNAME="$3"
                PASSWORD="$4"
                HOST="$1"
                PORT="$2"

                # Authentication API Endpoint
                BASE_URL="https://$HOST:$PORT/api/v1"
                AUTH_URL="$BASE_URL/auth/login"
                BACKUP_URL="$BASE_URL/job"

                # Final API Endpoint
                API_URL="https://api.example.com/resource"


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
                JSON_DATA='{"formName":"Backup Ansibleforms","extravars":{"persistent_folder":"/app/dist/persistent","mysql_credential":"__self__"},"credentials":{"mysql_credential":"__self__"}}'
                response=$(curl -s -k -X POST \
                                -H "Authorization: Bearer $token" \
                                -H "Content-Type: application/json" \
                                -d "$JSON_DATA" \
                                "$BACKUP_URL")

                # Extract status from the response
                status=$(echo "$response" | jq -r '.status')

                # Check if status is "success"
                if [ "$status" == "success" ]; then
                        # Extract jobid from the response
                        jobid=$(echo "$response" | jq -r '.data.output.id')
                        echo "Job ID: $jobid"
                else
                        # Extract error from the response
                        error=$(echo "$response" | jq -r '.data.error')
                        echo "Error: $error"
                fi
)