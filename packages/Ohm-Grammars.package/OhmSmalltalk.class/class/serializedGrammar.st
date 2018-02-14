serialized grammar
serializedGrammar
^ 'OhmSmalltalk <: BuiltInRules {

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

BlockArguments =
	blockArgument+ "|"

BlockLiteral =
	"[" BlockArguments? ExecutableCode? "]"

ByteArrayLiteral =
	"#[" integerLiteral* "]"

CascadedMessage =
	";" MessageChain

ExecutableCode =
   LocalVariableDeclarationList? Pragmas? MoreExecutableCode

Expression =
	Operand (MessageChain CascadedMessage*)?

FinalStatement =
	"^"? Statement "."?

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

KeywordPragma = pragmaKey pragmaLiteral*

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

LiteralArrayLiteralInLiteralArray =
  "#"? "(" literalArrayLiteralElement*  ")"

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

MoreExecutableCode = 
    Statements FinalStatement?

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

Pragma = 
  "<" PragmaValues ">"

PragmaValues = KeywordPragma+ | unaryPragma

Pragmas =
  Pragma*

Reference = 
    identifier

Statement =
    AssignmentOperation* Expression

Statements =
    (~MethodReturnOperator Statement? ".")*

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
    binarySelectorChar binarySelectorChar? binarySelectorChar?

binarySelectorChar =
    "~" | "!" | "@" | "%" | "&" | "*" | "-" | "+" | "=" | "|" | "\\" | "<" | ">" | "," | "?" | "/"

bindableIdentifier =
	~(reservedIdentifier space) identifier

blockArgument =
	":" space* letter alnum*

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
    | ByteArrayLiteral
    | symbolInArrayLiteral
    | symbolLiteral
    | characterLiteral
    | LiteralArrayLiteralInLiteralArray

normalFloatingPointLiteral
	= decimalIntegerLiteral ("." digit+)? exponent --exponent
     | decimalIntegerLiteral "." digit+  --normal

numberSigns
	= "-"

pragmaKey = identifier ":"

pragmaLiteral = ~pragmaKey ~">" literalArrayLiteralElement

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
	| "#" binaryMessageSelector -- fromBinarySelector

unaryPragma = identifier}'