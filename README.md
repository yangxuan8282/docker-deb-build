build package:

(run in screen session)

```
screen -S deb -L
```

```
~/work/build.sh PACKAGE_NAME
```

or build it manually with (same with build.sh)

```
sudo apt update && sudo apt install -y time &&
sudo apt-get build-dep mpv &&
mkdir -p mpv &&
cd mpv &&
apt-get source mpv &&
cd mpv* &&
time dpkg-buildpackage -uc -us -b -j"$(nproc)"
```

the deb package was located in the folder named with it's name

incase the compiling failed, check the log with:

```
tail -f screenlog.0
```
