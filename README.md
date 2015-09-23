# Ohm/S
[![Build Status](https://travis-ci.org/hpi-swa/Ohm-S.svg?branch=master)](https://travis-ci.org/hpi-swa/Ohm-S)

Ohm/S is a Squeak/Smalltalk implementation of the metaprogramming framework [Ohm](https://github.com/cdglabs/ohm).

## How to install
1. Get [Squeak 4.6 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/dalehenrich/metacello-work)
3. Finally, load Ohm/S with the following command:

```Smalltalk
Metacello new
  baseline: 'Ohm';
  repository: 'github://hpi-swa/ohm-s/packages';
  load.
```
