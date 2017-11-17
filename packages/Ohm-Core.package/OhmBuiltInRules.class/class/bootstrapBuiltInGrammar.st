boostrapping
bootstrapBuiltInGrammar

| b |
b := OhmGrammarBuilder new.
b setGrammarName: 'BuiltInRules'.

b addRule:'NonemptyListOf'as: (b seq: {b param: 1 named: #elem . b star: (b seq: {b param: 2 named: #sep . b param: 1 named: #elem})}) withParameters: {#elem . #sep}.
b addRule:'lower'as: (b rangeFrom: $a to: $z) withParameters: {}.
b addRule:'alnum'as: (b alt: {b apply: #letter with: {} . b apply: #digit with: {}}) withParameters: {}.
b addRule:'letter'as: (b alt: {b apply: #lower with: {} . b apply: #upper with: {}}) withParameters: {}.
b addRule:'nonemptyListOf'as: (b seq: {b param: 1 named: #elem . b star: (b seq: {b param: 2 named: #sep . b param: 1 named: #elem})}) withParameters: {#elem . #sep}.
b addRule:'emptyListOf'as: (b seq: {}) withParameters: {#elem . #sep}.
b addRule:'upper'as: (b rangeFrom: $A to: $Z) withParameters: {}.
b addRule:'digit'as: (b rangeFrom: $0 to: $9) withParameters: {}.
b addRule:'listOf'as: (b alt: {b apply: #nonemptyListOf with: {b param: 1 named: #elem . b param: 2 named: #sep} . b apply: #emptyListOf with: {b param: 1 named: #elem . b param: 2 named: #sep}}) withParameters: {#elem . #sep}.
b addRule:'EmptyListOf'as: (b seq: {}) withParameters: {#elem . #sep}.
b addRule:'ListOf'as: (b alt: {b apply: #NonemptyListOf with: {b param: 1 named: #elem . b param: 2 named: #sep} . b apply: #EmptyListOf with: {b param: 1 named: #elem . b param: 2 named: #sep}}) withParameters: {#elem . #sep}.
b addRule:'hexDigit'as: (b alt: {b apply: #digit with: {} . b rangeFrom: $a to: $f . b rangeFrom: $A to: $F}) withParameters: {}.
^ b buildGrammar