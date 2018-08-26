### Setup

```
make build
```

```
~/bin/setup.sh
```

### Building a Package:

(for example build `time`)

```
time ./build.sh time
```

the deb package was located in it's folder

you can run those steps in screen session

```
screen -S deb -L
```

and check the logs with:

```
tail -f screenlog.0
```
