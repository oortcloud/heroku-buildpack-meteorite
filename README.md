# Heroku buildpack: Meteorite

This build pack allows you to easily deploy meteor apps to heroku using [meteorite](http://github.com/oortcloud/meteorite). It's easy to use different branches of meteor and any smart package you can lay your hands on.

## Usage

```bash
heroku create --stack cedar --buildpack https://github.com/oortcloud/heroku-buildpack-meteorite.git
```

Then `git push` to heroku as usual.

## NOTES

Meteor apps deployed to Heroku cannot use more than one dyno. Heroku's load balancer does not support sticky sessions.

You need to set the `ROOT_URL` environment variable:

```bash
heroku config:add ROOT_URL=http://your.domain.com
```

You can specify meteor settings by setting the `METEOR_SETTINGS` environment variable:

```bash
heroku config:add METEOR_SETTINGS='{"herp":"derp"}'
```

You need to have a verified account so the buildpack can add a `mongohq:sandbox` addon.

## Websockets

Websockets, as of July 7th, are enabled on all new apps deployed on Heroku. For apps deployed before then, run the command:

```heroku labs:enable websockets```
