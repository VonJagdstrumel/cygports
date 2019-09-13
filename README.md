# Cygwin Ports

* Download the [cygwin's setup](https://cygwin.com/install.html) and install base environment.
* Install `cygport` and dependencies:

```sh
./setup.sh path/to/setup-x86_64 < dependencies.txt
```

* Make every package defined in `data`:

```sh
./cygport.sh data
```

* Or make only one:

```sh
cygport data/my-package-1.0-1.cygport finish fetch all
```

* Fresh packages are available in `data/*.{noarch,x86_64}/dist`.
* Logs are available in `data/*.{noarch,x86_64}/log`.
