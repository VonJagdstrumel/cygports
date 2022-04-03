# Cygwin Ports

## How to use

* Init/update submodules:

```sh
git submodule update --init --remote packages
```

* Install `cygport` and dependencies:

```sh
bin/setup < dependencies.txt
```

* Launch terminal:

```sh
bin/start
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
* Build and sign `dist` directory:

```sh
GNUPGHOME=/path/to/.gnupg bin/mkdist KEYID
```

* Publish packages:

```sh
pushd dist
git checkout master && git add .
git commit --amend -m "$(date -Iseconds)"
git push --force-with-lease
popd
```

* To clean everything up:

```sh
rm -rf packages/*/*.{noarch,x86_64}
rm -f packages/*/*.{tar.bz2,tar.gz,tar.xz,zip}
```

## Todo

* Split large packages into smaller ones
* Run automated tests
* Publish on `cygwin.com`/`sourceware.org`
