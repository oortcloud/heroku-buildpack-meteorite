#!/bin/bash
echo "Setting up MONGO_URL in .profile.d";
export MONGO_URL="${MONGO_URL:-$MONGOHQ_URL}";

echo "${MONGO_URL}";
