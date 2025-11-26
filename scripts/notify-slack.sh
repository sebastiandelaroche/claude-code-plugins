#!/bin/bash
# PRP Framework - Slack Notification Script
#
# Usage: ./notify-slack.sh "Your message here"
#
# Setup:
#   1. Create a Slack Incoming Webhook at https://api.slack.com/messaging/webhooks
#   2. Set the SLACK_WEBHOOK_URL environment variable:
#      export SLACK_WEBHOOK_URL="https://hooks.slack.com/services/YOUR/WEBHOOK/URL"
#
# Examples:
#   ./notify-slack.sh "Research complete: OAuth best practices"
#   ./notify-slack.sh "PRP ready for review: user-authentication.md"
#   ./notify-slack.sh "Implementation complete: Login feature"

set -e

MESSAGE="$1"

if [ -z "$MESSAGE" ]; then
    echo "Usage: $0 <message>"
    exit 1
fi

if [ -z "$SLACK_WEBHOOK_URL" ]; then
    echo "Warning: SLACK_WEBHOOK_URL not set. Skipping Slack notification."
    echo "To enable Slack notifications:"
    echo "  export SLACK_WEBHOOK_URL='https://hooks.slack.com/services/YOUR/WEBHOOK/URL'"
    exit 0
fi

# Get current directory name as project context
PROJECT_NAME=$(basename "$(pwd)")

# Build the payload with project context
PAYLOAD=$(cat <<EOF
{
    "blocks": [
        {
            "type": "section",
            "text": {
                "type": "mrkdwn",
                "text": "*PRP Framework Notification*\n\n${MESSAGE}"
            }
        },
        {
            "type": "context",
            "elements": [
                {
                    "type": "mrkdwn",
                    "text": "Project: \`${PROJECT_NAME}\` | $(date '+%Y-%m-%d %H:%M:%S')"
                }
            ]
        }
    ]
}
EOF
)

# Send the notification
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" \
    -X POST \
    -H 'Content-type: application/json' \
    --data "$PAYLOAD" \
    "$SLACK_WEBHOOK_URL")

if [ "$RESPONSE" = "200" ]; then
    echo "Slack notification sent successfully"
else
    echo "Warning: Failed to send Slack notification (HTTP $RESPONSE)"
fi
