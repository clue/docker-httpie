# docker-httpie

[HTTPie](http://httpie.org) is a cURL-like tool for humans.
This is a [docker](https://www.docker.io) image that eases setup.

## About Httpie

> *From [the official readme](https://github.com/jakubroztocil/httpie#readme):*

HTTPie (pronounced aych-tee-tee-pie) is a *command line HTTP client*.
Its goal is to make CLI interaction with web services as human-friendly as possible.
It provides a simple http command that allows for sending arbitrary HTTP requests using a simple and natural syntax,
and displays colorized responses. HTTPie can be used for testing, debugging, and generally interacting with HTTP servers.

![alt](https://github.com/jakubroztocil/httpie/raw/master/httpie.png)

## Install

This docker image is available as a [trusted build on the docker index](https://index.docker.io/u/clue/httpie/),
so using it is as simple as running:

```bash
$ docker run clue/httpie
```

Running this command for the first time will download the image automatically.
Further runs will be immediate, as the image will be cached locally.

To further ease running, it's recommended to set up a much shorter `alias`
so that you can easily execute it as just `http`:

```bash
$ alias http='docker run -it --rm --net=host clue/httpie'
```

This will create a temporary alias. In order to make it persist reboots,
you can append this exact line to your `~/.bashrc` (or similar) like this:

```bash
$ alias http >> ~/.bashrc
```

## Usage

Once [installed](#install), running HTTPie is as simple as invoking it like this:

> *From [the official examples](https://github.com/jakubroztocil/httpie#examples):*

```bash
 # Hello World
$ http httpie.org

 # Custom HTTP method and headers
$ http PUT example.org X-API-Token:123 name=John

 # Submitting forms
$ http -f POST example.org hello=World

 # Upload a file using redirected input:
$ http example.org < file.json

 # Download a file and save it via redirected output:
$ http example.org/file > file
```

You can supply any number of [HTTPie arguments](https://github.com/jakubroztocil/httpie#readme)
that will be passed through unmodified.

### Help

HTTPie has a fairly [extensive documentation](https://github.com/jakubroztocil/httpie#readme) available.
Also, you can use its included help output:

```bash
$ http --help
```
