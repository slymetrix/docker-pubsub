#!/bin/sh

set -eux

exec gcloud beta emulators pubsub start --project="$PROJECT_ID" --host-port=0.0.0.0:8085