> **For Meteor 0.9.x users**
>
> Please use https://github.com/AdmitHub/meteor-buildpack-horse
> 
> If you need automatic MAIL_GUN integration, use my fork or the previous buildpack:
> https://github.com/djhi/meteor-buildpack-horse

# Heroku buildpack: Meteorite

This build pack allows you to easily deploy meteor apps to heroku using [meteorite](http://github.com/oortcloud/meteorite). It's easy to use different branches of meteor and any smart package you can lay your hands on.

## Usage

```bash
heroku create --stack cedar --buildpack https://github.com/oortcloud/heroku-buildpack-meteorite.git
```

Then `git push` to heroku as usual.

## NOTES

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

To enable websockets on Heroku, you will need to enable the "labs" feature:

```heroku labs:enable websockets```
