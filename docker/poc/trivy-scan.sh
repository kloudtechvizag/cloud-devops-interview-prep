#!/bin/bash

# Check if Trivy is installed
if ! command -v trivy &> /dev/null
then
    echo "Trivy is not installed. Please install it first."
    exit 1
fi

IMAGE_NAME=$1

if [ -z "$IMAGE_NAME" ]; then
    echo "Usage: ./trivy-scan.sh <image_name>"
    exit 1
fi

echo "Scanning image: $IMAGE_NAME for vulnerabilities..."

# Run Trivy scan and output to a file
trivy image --severity HIGH,CRITICAL "$IMAGE_NAME"
