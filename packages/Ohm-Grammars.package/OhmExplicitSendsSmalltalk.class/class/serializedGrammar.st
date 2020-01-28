serialized grammar
serializedGrammar
^ 'OhmExplicitSendsSmalltalk <: BuiltInRules {

ArrayLiteral =
	ByteArrayLiteral
	| ObjectArrayLiteral
	| LiteralArrayLiteral

AssignmentOperation =
	bindableIdentifier assignmentOperator

BinaryMessage =
	binaryMessageSelector BinaryMessageArgument

BinaryMessageChain =
	BinaryMessage+

BinaryMethodHeader =
	binaryMessageSelector bindableIdentifier

BlockArguments =
	blockArgument+ "|"

BlockLiteral =
	"[" BlockArguments? ExecutableCode? "]" -- normal
	| "[" blockArgument+ "]" -- specialEmpty

ByteArrayLiteral =
	"#[" integerLiteral* "]"

CascadedMessages =
	MessageChain (";" MessageChain)+

ExecutableCode =
	LocalVariableDeclarationList? Pragmas? MoreExecutableCode

Expression =
	BinaryMessageSend CascadedMessages -- binaryCascade
	| UnaryMessageSend CascadedMessages -- unaryCascade
	| KeywordMessageSend
	
BinaryMessageSend =
	BinaryMessageReceiver BinaryMessage?

BinaryMessageReceiver =
	BinaryMessageSend
	| UnaryMessageSend
	| Operand

BinaryMessageArgument =
	UnaryMessageSend

UnaryMessageSend = 
	UnaryMessageReceiver UnaryMessage -- message
	| Operand -- base

UnaryMessageReceiver =
	UnaryMessageSend
	| Operand

KeywordMessageSend = 
	KeywordMessageReceiver KeywordMessageSegment*

KeywordMessageReceiver = 
	BinaryMessageSend

FinalStatement =
	"^"? Statement "."?

KeywordMessage =
	KeywordMessageSegment+

KeywordMessageArgument =
	BinaryMessageSend

KeywordMessageSegment =
	keyword KeywordMessageArgument

KeywordMethodHeader =
	KeywordMethodHeaderSegment+

KeywordMethodHeaderSegment =
	keyword bindableIdentifier

KeywordPragma =
	pragmaKey pragmaLiteral*

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
	MethodHeader Pragmas ExecutableCode

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
	Statement "." --normal
	| Statement --finalExpression

Operand =
	Literal
	| Reference
	| NestedExpression

Pragma = 
	"<" PragmaValues ">"

PragmaValues =
	KeywordPragma+ | unaryPragma

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

assignmentOperator =
	":=" | "_"

baseNIntegerLiteral =
	numberSigns? alnum+

binaryMessageSelector =
	binarySelectorChar+

binarySelectorChar =
	"~" | "!" | "@" | "%" | "&" | "*" | "-" | "+" | "=" | "|" | "\\" | "<" | ">" | "," | "?" | "/"

bindableIdentifier =
	~(reservedIdentifier space) identifier

blockArgument =
	":" space* letter alnum*

byteArrayNumber =
	digit -- oneDigit
	| digit digit 	-- twoDigits
	| ("1"|"2") digit digit -- threeDigits

characterLiteral =
	"$" any

comment =
	"\"" (~"\"" any)* "\""

constantReference =
	"true"
	| "false"
	| "nil"

decimalIntegerLiteral =
	numberSigns? digit+

exponent =
	("e" | "d" | "q")? decimalIntegerLiteral

floatingPointLiteral =
	radixFloatingPointLiteral
	| normalFloatingPointLiteral

identifier =
	letter (alnum | "_")*

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

normalFloatingPointLiteral =
	decimalIntegerLiteral ("." digit+)? exponent --exponent
	| decimalIntegerLiteral "." digit+ --normal

numberSigns =
	"-"

pragmaKey =
	identifier ":"

pragmaLiteral =
	~pragmaKey ~">" literalArrayLiteralElement

pseudoVariableReference = 
	"self" | "super" | "thisContext"

radix =
	decimalIntegerLiteral

radixFloatingPointLiteral =
	decimalIntegerLiteral "r" normalFloatingPointLiteral

reservedIdentifier =
	constantReference
	| pseudoVariableReference

scaledDecimalLiteral =
	decimalIntegerLiteral ("." digit+)? "s" decimalIntegerLiteral?

space +=
	comment

stringLiteral =
	"\''" (~"\''" any | "\''\''")* "\''"

symbolInArrayLiteral =
	letter (alnum | ":")* --plain
	| binaryMessageSelector --binarySelector
	| (alnum | "." | "," | ":" | "[" | "]" | "|" | "^" | assignmentOperator)+ --code

symbolLiteral =
	"#" space* letter (alnum | ":" | "_")* -- normal
	| "#" space*  stringLiteral -- fromString
	| "#" space*  binaryMessageSelector -- fromBinarySelector
	| "#:" -- colonSymbol

unaryPragma =
	identifier
	
}'