# davmail-docker

A simple `docker-compose` and `Dockerfile` to [davmail](http://davmail.sourceforge.net/index.html).

Contents of the `davmail` directory was downloaded from [Sourceforge](https://downloads.sourceforge.net/project/davmail/davmail/6.0.0/davmail-6.0.0-3375.zip).

## First time setup

Using the `davmail.mode=O365Modern` is a little bit tricky, because a session token always needs to be refreshed. Luckily, `davmail` does this, but first we need to give it permission. So for the **first** run:

1. Change the log levels in the `davmail.properties`to `DEBUG`
2. When the authentication fails, click the link in the logs and give it permission in the O365.
3. You can set back the log levels. From this point, it will be handled.

## Used custom configuration

* `davmail` configuration can be found in `davmail.properties`. \
It is the same as recommended in the  [Server Setup](http://davmail.sourceforge.net/serversetup.html), except:
    * `davmail.mode`=`O365Modern` (see above)

* `IMAP` port is mapped to `7007` (in `docker-compose.yml`)
* `SMTP` port is mapped to `7008` (in `docker-compose.yml`)
* All other `davmail` supported ports are not exposed.