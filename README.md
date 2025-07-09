# Docker WinBox

A containized WinBox that can run on any GNU/Linux with Docker

## Building locally

Use docker compose to build the image:

```shell
sh update-env.sh
docker compose build
```

## Running

See [extras](./extras) directory for caller script and desktop launcher:

* winbox.sh: the caller script (copy to any place on you PATH)
* com.mikrotik.winbox.desktop: freedesktop launcher (install with desktop-file-install)
* winbox.png: icon for winbox (copy to /usr/share/pixmaps)
