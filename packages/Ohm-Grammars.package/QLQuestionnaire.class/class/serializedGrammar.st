serialized grammar
serializedGrammar
^ 'QLQuestionnaire <: BaseGrammar {

Form =
  "form" formName "{" FormBody "}"

FormBody =
  FormLine*

FormLine = 
  QuestionLine

QuestionLine = 
  questionIdentifier ":" questionLabel typeIdentifier

formName =
  letter alnum*

questionIdentifier = 
  letter alnum*

questionLabel = 
  "\"" (~"\"" any)* "\""

typeIdentifier =
  letter+}'