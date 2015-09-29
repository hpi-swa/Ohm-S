# Ohm/S
[![Build Status](https://travis-ci.org/hpi-swa/Ohm-S.svg?branch=master)](https://travis-ci.org/hpi-swa/Ohm-S)

Ohm/S is a Squeak/Smalltalk implementation of the metaprogramming framework [Ohm](https://github.com/cdglabs/ohm). It currently reflects the state of Ohm/JS from around this [commit](https://github.com/
cdglabs/ohm/commit/f18448604a09f3c343d10e994eab228edee51ce2).

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

## Usage
Ohm/S provides the same features Ohm/JS provides. The Ohm grammar language remains unchanged and Ohm/JS grammars can be used in Ohm/S without modifications. To make use of the image concept, grammars can additionally be installed permanently in the image. Further, the specification of semantics is adjusted to match the language concepts of Smalltalk.

### Extended Grammar Interface
Ohm/S allows to create gramamrs as ordinary objects:

````Smalltalk
OhmGrammar makeGrammar: 'G { start = ''a'' }'
````

The interface also allows grammars to be persisted into the image, similar to the way Smalltalk classes are persisted:

````Smalltalk
OhmGrammar makeAndInstallGrammar: 'G { start = ''a'' }'
````

This will create a class with the name ````G```` in the package 'Ohm-Grammars'. It represents the grammar and it understands all messages an Ohm grammar will understand. This class also contains the Ohm grammar language representation of the grammar, which can be found in the class method ````serializedGrammar````. You can move this class to your own package and put it under version control.
