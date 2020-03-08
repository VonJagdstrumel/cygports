# Cygwin Ports

* Download the [cygwin's setup](https://cygwin.com/install.html) and install base environment.
* Install `cygport` and dependencies:

```sh
bin/setup path/to/setup-x86_64 < dependencies.txt
```

* Make every package defined in `data`:

```sh
bin/cygport
```

* Or make only one:

```sh
cygport data/my-package-1.0-1.cygport finish fetch all
```

* Logs are available in `data/*.{noarch,x86_64}/log`.
* Fresh packages are available in `data/*.{noarch,x86_64}/dist`.
* Build `dist` directory:

```sh
bin/mkdist
```
