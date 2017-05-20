# Ohm/S [![Build Status](https://travis-ci.org/hpi-swa/Ohm-S.svg)](https://travis-ci.org/hpi-swa/Ohm-S)

Ohm/S is a Squeak/Smalltalk implementation of the metaprogramming framework [Ohm](https://github.com/cdglabs/ohm). It currently reflects the state of Ohm/JS from around this [commit](https://github.com/cdglabs/ohm/commit/f18448604a09f3c343d10e994eab228edee51ce2).

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
For detailed information and tutorials on the Ohm grammar descriptions please consult [Ohm](https://github.com/cdglabs/ohm). 

In general, Ohm/S provides the same features Ohm/JS provides. The Ohm grammar language remains unchanged and Ohm/JS grammars can be used in Ohm/S without modifications. To make use of the image concept, grammars can additionally be installed permanently in the image. Further, the specification of semantics is adjusted to match the language concepts of Smalltalk.

### Persisted and Common Grammar Interface
Ohm/S allows to create gramamrs as ordinary objects:

````Smalltalk
OhmGrammar makeGrammar: 'G { 
  start = ''a''
  anotherRule = start start
}'
````

The interface also allows grammars to be persisted into the image, similar to the way Smalltalk classes are persisted:

````Smalltalk
OhmGrammar makeAndInstallGrammar:  'G { 
  start = ''a''
  anotherRule = start start
}'
````

This will create a class with the name ````G```` in the package 'Ohm-Grammars'. It represents the grammar and it understands all messages an Ohm grammar will understand. This class also contains the Ohm grammar language representation of the grammar, which can be found in the class method ````serializedGrammar````. You can move this class to your own package and put it under version control.

### Ohm/S Semantics Definition
As Ohm/S is currently based on a previous version of Ohm/JS the semantics are still separated into SemanticActions, InheritedAttributes and SynthesizedAttributes. To implement on of them in Ohm/S, you can subclass the class with the same name. The semantics for specific rules are implemented in methods with the following naming scheme.

For synthesized attributes and semantic actions, the first keyword of the method name has to be a camel case version of the rule name with the capitalization of the first character matching the capitalization of the first character of the rule name (hyphens and underscores are removed and the word after them is capitalized). The argument to this first keyword is the node which is currently augmented. After the first one, there has to follow one keyword for each subexpression with an arbitrary name.

````Smalltalk
SimpleSemantics>>start: aNode onePrimitive: primitiveValue
  ^ aNode interval contents
````

An attribute can be recursively evaluated by sending the message value to the
attribute itself:

````Smalltalk
SimpleSemantics>>anotherRule: aNode start1: firstStart start2: secondStart
  ^ (self value: start1) , (self value: start2)
````
