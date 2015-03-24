## v8 (2014-09-25)

Use the heroku buildpack profile.d scripts mechanism to set the `MONGO_URL` environment variable to `MONGOHQ_URL` if present. If you provided the `MONGO_URL` by yourself in your app settings, it won't be overriden.

The buildpack now check whether you added the Mailgun addon and if you did, set the `MAIL_URL` environment variable to:
`"smtp://${MAILGUN_SMTP_LOGIN}:${MAILGUN_SMTP_PASSWORD}@${MAILGUN_SMTP_SERVER}:${MAILGUN_SMTP_PORT}"`

If you provided the `MAIL_URL` by yourself in your app settings, it won't be overriden.

## v7 (2012-03-27)

* remove build asset caching
* prevent installation of devDependencies
* add warning if no nodejs version specified
