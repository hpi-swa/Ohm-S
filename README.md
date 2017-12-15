# Ohm/S [![Build Status](https://travis-ci.org/hpi-swa/Ohm-S.svg?branch=master)](https://travis-ci.org/hpi-swa/Ohm-S) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa/Ohm-S/badge.svg)](https://coveralls.io/github/hpi-swa/Ohm-S)

Ohm/S is a Squeak/Smalltalk implementation of the metaprogramming framework [Ohm](https://github.com/cdglabs/ohm). It currently reflects the state of Ohm/JS from around version v0.86. A notable difference is that there are currently no parameterized rules and actions. Beside that, Ohm/S changes the lookup of rules from supergrammars from compile-time to matching-time. Further, Ohm/S grammars can be installed as meta-objects in the Smalltalk image similar to Smalltalk classes.

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

In general, Ohm/S provides the same features Ohm/JS provides. The Ohm grammar language remains unchanged and Ohm/JS grammars can be used in Ohm/S without modifications as long as they do not contain paramterized rules. To make use of the image concept, grammars can additionally be installed permanently in the image. Further, the specification of semantics is adjusted to match the language concepts of Smalltalk.

### Persisted and Common Grammar Interface
Ohm/S allows to create grammars as ordinary objects:

````Smalltalk
OhmGrammar new: 'G { 
  start = "a"
  anotherRule = start start
}'
````

The interface also allows grammars to be persisted into the image, similar to the way Smalltalk classes are persisted:

````Smalltalk
OhmGrammar install:  'G { 
  start = "a"
  anotherRule = start start
}'
````

This will create a class with the name ````G```` in the package 'Ohm-Grammars'. It represents the grammar and it understands all messages an Ohm grammar will understand. This class also contains the Ohm grammar language representation of the grammar, which can be found in the class method ````serializedGrammar````. You can move this class to your own package and put it under version control.

### Ohm/S Semantics Definition
As Ohm/S is currently based on a previous version of Ohm/JS the semantics are still separated into SemanticActions, InheritedAttributes and SynthesizedAttributes. To implement one of them in Ohm/S, you can subclass the class with the same name. The semantics for specific rules are implemented in methods with the following naming scheme.

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

### How to cite this work
If you did work based on / or build with Ohm/S and want to write about the work, you can reference Ohm/S through the reference at the bottom.

As Ohm/S is a mere Smalltalk adaptation of [Ohm](https://github.com/cdglabs/ohm) you should also reference Ohm, which you can do using the second reference.

````Bibtex
@inproceedings{rein_gramada_2016,
  author    = {Patrick Rein and
               Robert Hirschfeld and
               Marcel Taeumel},
  title     = {Gramada: Immediacy in Programming Language Development},
  booktitle = {Symposium on New Ideas, New Paradigms, and
               Reflections on Programming and Software (Onward!) 2016},
  pages     = {165--179},
  year      = {2016},
  month     = {November},
  location  = {Amsterdam, The Netherlands},
  crossref  = {DBLP:conf/oopsla/2016onward},
  url       = {http://doi.acm.org/10.1145/2986012.2986022},
  doi       = {10.1145/2986012.2986022}
}

@inproceedings{warth_modularSemanticActions_2016,
  author = {Alessandro Warth 
            and Patrick Dubroy 
            and Tony Garnock-Jones},
  title = {Modular Semantic Actions},
  booktitle = {Proceedings of the Symposium on Dynamic Languages (DLS) 2016},
  series = {DLS 2016},
  year = {2016},
  isbn = {978-1-4503-4445-6},
  location = {Amsterdam, Netherlands},
  pages = {108--119},
  numpages = {12},
  url = {http://doi.acm.org/10.1145/2989225.2989231},
  doi = {10.1145/2989225.2989231},
  acmid = {2989231},
  publisher = {ACM},
  address = {New York, NY, USA},
} 
````
