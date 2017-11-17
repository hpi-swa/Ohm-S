serialized grammar
serializedGrammar
^ 'OhmBibtexAuthors {

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

middleName =
  ~"and" piece+ "."

namePart =
    ~"and" piece+ "."?

piece =
  ~separator any

separator =
  space | ","
}'