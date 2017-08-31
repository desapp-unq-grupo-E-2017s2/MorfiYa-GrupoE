Accessing
addScore: aScore

	(aScore between: 1 and: 5) ifTrue:[scores
		add: aScore] ifFalse: [ Error signal: 'La puntuación debe ser entre 1 y 5']
	