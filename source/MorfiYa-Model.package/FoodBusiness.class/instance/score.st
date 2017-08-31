Accessing
score
	
	|quantityOfScores score|
	quantityOfScores := scores size.
	score := scores isEmpty ifTrue: [^0] ifFalse:[scores sum] . 
	^(score / quantityOfScores ) asScaledDecimal 