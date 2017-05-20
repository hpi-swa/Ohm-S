as yet unclassified
serializedGrammar
^ 'OhmBibtexAuthors <: BaseGrammar {

Author =
    LastnameAuthor | FirstnameAuthor

Authors = 
    Author MoreAuthors*

FirstnameAuthor =
    namePart+

LastnameAuthor =
    namePart+ "," namePart+

MoreAuthors =
    "and" Author

firstRule = "start"

middleName =
  ~"and" letter+ "."

namePart =
    ~"and" letter+ "."?}'