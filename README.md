# Setup Bats Libs

GitHub Action to setup the three major [bats](https://github.com/bats-core/bats-core) libs:

* [bats-support](https://github.com/bats-core/bats-support)
* [bats-assert](https://github.com/bats-core/bats-assert)
* [bats-detik](https://github.com/bats-core/bats-detik)

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
         uses: brokenpip3/setup-bats-libs@0.0.2

```

## Inputs

### Bats-support

* `support-version`: Bats-support version, default to latest
  * required: `false`
  * default: `0.3.0`

* `support-path`: Bats-support path
  * required: `false`
  * default: `/usr/lib/bats-support`

### Bats-assert

* `assert-version`: Bats-assert version, default to latest
  * required: `false`
  * default: `0.2.0`

* `assert-path`: Bats-assert path
  * required: `false`
  * default: `/usr/lib/bats-assert`

### Bats-detik

* `detik-version`: Bats-detik version, default to latest
  *  required: `false`
  *  default: `1.1.0`

* `detik-path`: Bats-detik path
  * required: `false`
  * default: `/usr/lib/bats-detik`

