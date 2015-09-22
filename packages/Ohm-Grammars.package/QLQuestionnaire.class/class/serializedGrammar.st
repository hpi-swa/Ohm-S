as yet unclassified
serializedGrammar
^ 'Ohm-Core-Grammars.QLQuestionnaire <: Ohm-Core-Grammars.BaseGrammar {

Form =
  ''form'' formName ''{'' FormBody ''}''

FormBody =
  FormLine*

FormLine = 
  QuestionLine

QuestionLine = 
  questionIdentifier questionLabel typeIdentifier

formName =
  letter alnum*

questionIdentifier = 
  letter alnum*

questionLabel = 
  ''"'' (~''"'' _)* ''"''

typeIdentifier =
  letter+}'