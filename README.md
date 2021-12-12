# Setup Bats Libs

GitHub Action to setup the four major [bats](https://github.com/bats-core/bats-core) libs:

* [bats-support](https://github.com/bats-core/bats-support)
* [bats-assert](https://github.com/bats-core/bats-assert)
* [bats-detik](https://github.com/bats-core/bats-detik)
* [bats-file](https://github.com/bats-core/bats-file)

The action can be also instructed to select which libs that will be installed.

## How to use it

Can be used in duo with [setup-bats](https://github.com/mig4/setup-bats) action
to setup all the bats libs you need for your CI jobs.

An example:

``` yaml
on: [push]

jobs:
   my_test:
     runs-on: ubuntu-latest
     name: Install Bats common libs
     steps:
       - name: Checkout
         uses: actions/checkout@v2
       - name: Setup BATS
         uses: mig4/setup-bats@v1
       - name: Setup Bats libs
         uses: brokenpip3/setup-bats-libs@0.1.0

```

## Inputs

### Bats-support

* `support-install`: Bats-support installation, default to true
  * required: `false`
  * default: `true`

* `support-version`: Bats-support version, default to latest
  * required: `false`
  * default: `0.3.0`

* `support-path`: Bats-support path
  * required: `false`
  * default: `/usr/lib/bats-support`

### Bats-assert

* `assert-install`: Bats-assert installation, default to true
  * required: `false`
  * default: `true`

* `assert-version`: Bats-assert version, default to latest
  * required: `false`
  * default: `0.2.0`

* `assert-path`: Bats-assert path
  * required: `false`
  * default: `/usr/lib/bats-assert`

### Bats-detik

* `detik-install`: Bats-detik installation, default to true
  * required: `false`
  * default: `true`

* `detik-version`: Bats-detik version, default to latest
  *  required: `false`
  *  default: `1.1.0`

* `detik-path`: Bats-detik path
  * required: `false`
  * default: `/usr/lib/bats-detik`

### Bats-file

* `file-install`: Bats-file installation, default to true
  * required: `false`
  * default: `true`

* `file-version`: Bats-file version, default to latest
  * required: `false`
  * default: `0.3.0`

* `file-path`: Bats-file path
  * required: `false`
  * default: `/usr/lib/bats-file`
