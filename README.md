# Cygwin Ports

## How to use

* Download the [cygwin's setup](https://cygwin.com/install.html) and install base environment.
* Install `cygport` and dependencies:

```sh
bin/setup path/to/setup-x86_64 < dependencies.txt
```

* Make every package defined in `packages`:

```sh
bin/cygport
```

* Or make only one:

```sh
cygport packages/my-package/my-package-1.0-1.cygport finish fetch all
```

* Logs are available in `packages/*/*.{noarch,x86_64}/log`.
* Fresh packages are available in `packages/*/*.{noarch,x86_64}/dist`.
* Build an sign `dist` directory:

```sh
GNUPGHOME=/path/to/.gnupg bin/mkdist
```

* To clean everything up:

```sh
rm -rf packages/*/*.{noarch,x86_64}
rm -f packages/*/*.{tar.bz2,tar.gz,tar.xz,zip}
```

## Todo

* Split large packages into smaller ones
* Run automated tests
* Set up a package server (or publish on `cygwin.com`/`sourceware.org`)
