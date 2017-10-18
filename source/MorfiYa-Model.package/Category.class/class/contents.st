private
contents
	^ Contents ifNil: [ Contents := self allCategories ]