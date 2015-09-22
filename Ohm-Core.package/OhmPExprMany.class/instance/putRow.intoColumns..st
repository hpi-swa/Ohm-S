accessing
putRow: row intoColumns: columns

	row withIndexDo: [:element :index | 
		(columns at: index) add: element ]