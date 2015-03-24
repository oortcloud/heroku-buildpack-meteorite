#!/bin/bash
if [ -z "${MAILGUN_API_KEY}" ]; then
  echo "MAILGUN is not configured, we're not setting MAIL_URL"
else
  echo "Setting up MAIL_URL in .profile.d from MAILGUN settings"
  export MAIL_URL="${MAIL_URL:-smtp://${MAILGUN_SMTP_LOGIN}:${MAILGUN_SMTP_PASSWORD}@${MAILGUN_SMTP_SERVER}:${MAILGUN_SMTP_PORT}}";
  echo "${MAIL_URL}";

fi
