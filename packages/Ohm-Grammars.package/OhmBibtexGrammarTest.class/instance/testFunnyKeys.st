as yet unclassified
testFunnyKeys

	startRule := #BibtexDB.

	self shouldParseAll: #('@misc{}' '@misc{,}'  '@misc{\n}' '@misc{@"#%\''()=, title="a"}' '@misc{,title="a"}' '@misc(k)ey, title="a")'
'@misc{k{ey, title="a"}')