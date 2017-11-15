serialized grammar
serializedGrammar

^ 'Ohm-Core-Grammars.OhmSmalltalk <: Ohm-Grammars.BaseGrammar {
  
ArrayLiteral =
	ByteArrayLiteral
	| ObjectArrayLiteral
      | LiteralArrayLiteral

AssignmentOperation =
    bindableIdentifier ":="

BinaryMessage =
    binaryMessageSelector BinaryMessageOperand

BinaryMessageChain =
    BinaryMessage+

BinaryMessageOperand =
    Operand UnaryMessageChain?

BinaryMethodHeader =
    binaryMessageSelector bindableIdentifier

blockArgument =
	":" letter alnum*

BlockArguments =
	blockArgument+ "|"

BlockLiteral =
	"[" BlockArguments? ExecutableCode? "]"

ByteArrayLiteral =
	"#[" byteArrayNumber* "]"

CascadedMessage =
	";" MessageChain

ExecutableCode =
   LocalVariableDeclarationList? MoreExecutableCode

MoreExecutableCode = 
    Statements FinalStatement?

Statements =
    (~MethodReturnOperator Statement ".")*

FinalStatement =
	"^"? Statement "."?

Expression =
	Operand (MessageChain CascadedMessage*)?

FinalStatement =
	"^"? Statement

KeywordMessage =
    KeywordMessageSegment+

KeywordMessageArgument =
    BinaryMessageOperand BinaryMessageChain?

KeywordMessageSegment =
    keyword KeywordMessageArgument

KeywordMethodHeader =
    KeywordMethodHeaderSegment+

KeywordMethodHeaderSegment =
    keyword bindableIdentifier

Literal =
	constantReference
	| scaledDecimalLiteral
	| floatingPointLiteral
	| integerLiteral
	| characterLiteral
	| stringLiteral
	| symbolLiteral
	| ArrayLiteral
	| BlockLiteral

LiteralArrayLiteral =
  "#(" literalArrayLiteralElement*  ")"

LocalVariableDeclarationList =
 "|" bindableIdentifier* "|"

MessageChain =
    KeywordMessage --keyword
    | BinaryMessage BinaryMessageChain? KeywordMessage? --binary
    | UnaryMessage UnaryMessageChain? BinaryMessageChain? KeywordMessage? --unary

MethodDeclaration =
  MethodHeader 
  Pragmas
  ExecutableCode

MethodHeader =
    KeywordMethodHeader
    | BinaryMethodHeader
    | UnaryMethodHeader

MethodReturnOperator =
    "^"

NestedExpression =
    "(" Statement ")"

ObjectArrayLiteral =
    "{" ObjectArrayLiteralElement* "}"

ObjectArrayLiteralElement =
  Expression "." --normal
  | Expression --finalExpression

Operand =
    Literal
    | Reference
    | NestedExpression

PragmaValues = KeywordPragma+ | unaryPragma 

unaryPragma = identifier

KeywordPragma = pragmaKey Literal

pragmaKey = identifier ":"

Pragma = 
  "<" PragmaValues ">"

Pragmas =
  Pragma*


Reference = 
    identifier

Statement =
    AssignmentOperation? Expression

UnaryMessage =
    ~keyword UnaryMessageSelector

UnaryMessageChain =
    UnaryMessage+

UnaryMessageSelector =
    identifier

UnaryMethodHeader =
    UnaryMessageSelector

baseNIntegerLiteral =
	numberSigns? alnum+

binaryMessageSelector =
    binarySelectorChar binarySelectorChar?

binarySelectorChar =
    "~" | "!" | "@" | "%" | "&" | "*" | "-" | "+" | "=" | "|" | "\\" | "<" | ">" | "," | "?" | "/"

bindableIdentifier =
	~(reservedIdentifier space) identifier

byteArrayNumber =
	digit 				-- oneDigit
	| digit digit 			-- twoDigits
	| ("1"|"2") digit digit      -- threeDigits

characterLiteral =
	"$" (any | space)

comment =
	"\"" (~"\"" (any | " " | "\n"))* "\""

constantReference =
	"true"
	| "false"
	| "nil"

decimalIntegerLiteral
  = numberSigns? digit+

exponent
  = ("e" | "d" | "q")? 
decimalIntegerLiteral

floatingPointLiteral 
	= radixFloatingPointLiteral
         | normalFloatingPointLiteral

identifier =
	letter alnum*

integerLiteral = 
	numberSigns? radix "r" baseNIntegerLiteral --radix
	| numberSigns? digit+ --normal

keyword =
	identifier ":"

literalArrayLiteralElement =
    floatingPointLiteral
    | integerLiteral
    | constantReference
    | stringLiteral
    | symbolInArrayLiteral
    | symbolLiteral

normalFloatingPointLiteral
	= decimalIntegerLiteral ("." digit+)? exponent --exponent
     | decimalIntegerLiteral "." digit+  --normal

numberSigns
	= "-"

pseudoVariableReference = 
	"self" | "super" | "thisContext"

radix =
	decimalIntegerLiteral

radixFloatingPointLiteral
	= decimalIntegerLiteral "r" normalFloatingPointLiteral

reservedIdentifier =
	constantReference | pseudoVariableReference

scaledDecimalLiteral =
	decimalIntegerLiteral ("." digit+)? "s" decimalIntegerLiteral?

space +=
	comment

stringLiteral =
	"\''" (~"\''" any | "\''\''")* "\''"

symbolInArrayLiteral =
    letter (alnum | ":")* --plain
    | binaryMessageSelector --binarySelector

symbolLiteral =
	"#" letter (alnum | ":")* -- normal
	| "#" stringLiteral -- fromString
	| "#" binaryMessageSelector -- fromBinarySelector}'