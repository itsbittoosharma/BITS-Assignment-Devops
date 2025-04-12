#!/bin/bash
ENV=$1
if [ "$ENV" = "staging" ]; then
    cp app.py ~/staging/
    echo "Deployed to staging"
elif [ "$ENV" = "production" ]; then
    cp app.py ~/production/
    echo "Deployed to production"
else
    echo "Unknown environment"
    exit 1
fi

