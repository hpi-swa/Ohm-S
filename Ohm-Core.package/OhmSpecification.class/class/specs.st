as yet unclassified
specs

	'[{
  "spec-name" :  "anything",
  "grammar" :  "G { }",
  "specs" : [
    {
      "spec-name" : "direct match, no stream",
      "specs" : [ 
        { "testMethod" :  "match", "input" : [5, "_"], "expectedResult" : true },
        { "testMethod" :  "match", "input" : [null, "_"], "expectedResult" : true },
        { "testMethod" :  "attributeMatch", "input" : [5, "_"], "attributeClass" : "simpleAnythingAttribute", "expectedResult" : 5 },
        { "testMethod" :  "attributeMatch", "input" : [null, "_"], "attributeClass" : "simpleAnythingAttribute", "expectedResult" : null }
      ]
    },
    {
      "spec-name" : "match in string stream",
      "specs" : [
        { "testMethod" :  "match", "input" : [5, "_"], "expectedResult" : true },
        { "testMethod" :  "matchContents", "input" : ["5", "_"], "expectedResult" : true },
        { "testMethod" :  "matchContents", "input" : ["", "_"], "expectedResult" : false },
        { "testMethod" :  "attributeMatch", "input" : ["5", "_"], "attributeClass" : "simpleAnythingAttribute", "expectedResult" : "5" },
        { "testMethod" :  "attributeMatchContents", "input" : ["5", "_"], "attributeClass" : "simpleAnythingAttribute", "expectedResult" : "5" }
      ]
    },
     {
      "spec-name" : "match in list stream",
      "specs" : [
        { "testMethod" :  "matchContents", "input" : [["123"], "_"], "expectedResult" : true },
        { "testMethod" :  "matchContents", "input" : [["123", 4], "_"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : [[], "_"], "expectedResult" : false },
        { "testMethod" :  "attributeMatch", "input" : ["5", "_"], "attributeClass" : "simpleAnythingAttribute", "expectedResult" : "5" },
        { "testMethod" :  "attributeMatchContents", "input" : [["123"], "_"], "attributeClass" : "simpleAnythingAttribute", "expectedResult" : "123" }
      ]
    }
  ]
},
{
  "spec-name" :  "exactly(x)",
  "grammar" :  ["M {",
            "  five = 5",
            "  _true = true",
            "  _false = false",
            "  _null = null",
            "  _undefined = undefined",
            "}"],
  "specs" : [
     {
      "spec-name" : "direct match, no stream",
      "specs" : [
        { "testMethod" :  "match", "input" : [5, "five"], "expectedResult" : true },
        { "testMethod" :  "match", "input" : [2, "five"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["a", "five"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["5", "five"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["true", "five"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [true, "five"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["false", "five"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [false, "five"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [null, "five"], "expectedResult" : false },
        
        { "testMethod" :  "match", "input" : [5, "_true"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [2, "_true"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["a", "_true"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["5", "_true"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["true", "_true"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [true, "_true"], "expectedResult" : true },
        { "testMethod" :  "match", "input" : ["false", "_true"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [false, "_true"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [null, "_true"], "expectedResult" : false },
        
        { "testMethod" :  "match", "input" : [5, "_false"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [2, "_false"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["a", "_false"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["5", "_false"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["true", "_false"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [true, "_false"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["false", "_false"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [false, "_false"], "expectedResult" : true },
        { "testMethod" :  "match", "input" : [null, "_false"], "expectedResult" : false },
        
        { "testMethod" :  "match", "input" : [5, "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [2, "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["a", "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["5", "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["true", "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [true, "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : ["false", "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [false, "_null"], "expectedResult" : false },
        { "testMethod" :  "match", "input" : [null, "_null"], "expectedResult" : true },
        
        { "testMethod" :  "attributeMatch", "input" : [5, "five"], "attributeClass" : "simpleExactlyAttribute", "expectedResult" : 5 },
        { "testMethod" :  "attributeMatch", "input" : [true, "_true"], "attributeClass" : "simpleExactlyAttribute", "expectedResult" : true },
        { "testMethod" :  "attributeMatch", "input" : [false, "_false"], "attributeClass" : "simpleExactlyAttribute", "expectedResult" : false },
        { "testMethod" :  "attributeMatch", "input" : [null, "_null"], "attributeClass" : "simpleExactlyAttribute", "expectedResult" : null }
      ]
     },
     {
      "spec-name" : "direct match, no stream",
      "specs" : [ 
        { "testMethod" :  "matchContents", "input" : ["!", "five"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : ["5", "five"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : ["2", "five"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : ["", "five"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : ["true", "_true"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : ["false", "_false"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : ["null", "_null"], "expectedResult" : false }
      ]
     },
     {
      "spec-name" : "match in list stream",
      "specs" : [
        { "testMethod" :  "matchContents", "input" : [[5], "five"], "expectedResult" : true },
        { "testMethod" :  "matchContents", "input" : [[true], "_true"], "expectedResult" : true },
        { "testMethod" :  "matchContents", "input" : [[false], "_false"], "expectedResult" : true },
        { "testMethod" :  "matchContents", "input" : [[null], "_null"], "expectedResult" : true },
        { "testMethod" :  "matchContents", "input" : [["!"], "five"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : [["5"], "five"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : [[2], "five"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : [[], "_"], "expectedResult" : false },
        { "testMethod" :  "matchContents", "input" : [[""], "_"], "expectedResult" : false },
        
        { "testMethod" :  "attributeMatch", "input" : [5, "_"], "attributeClass" : "simpleExactlyAttribute", "expectedResult" : "5" }
      ]
    }
  ]
}
]'