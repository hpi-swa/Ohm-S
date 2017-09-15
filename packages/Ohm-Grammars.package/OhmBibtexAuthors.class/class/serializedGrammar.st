serialized grammar
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

innerPiece =
  piece -- recurse
  | ~"}" any -- special

middleName =
  ~"and" piece+ "."

namePart =
    ~"and" piece+ "."?

piece =
  letter -- simple
  | "{" innerPiece* "}" -- complex}'