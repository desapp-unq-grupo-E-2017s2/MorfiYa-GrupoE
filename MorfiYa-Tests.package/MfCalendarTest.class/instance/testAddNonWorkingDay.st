tests
testAddNonWorkingDay
	| calendar |
	"19 de Agosto y 26 de Agosto de 2017 son Sábados - apiorno"
	calendar := MfCalendar new.
	self
		deny: (calendar isNonWorkingDay: August nineteenth , 2017);
		deny: (calendar isNonWorkingDay: August twentysixth , 2017).
	calendar addNonWorkingDay: Saturday.
	self
		assert: (calendar isNonWorkingDay: August nineteenth , 2017);
		assert: (calendar isNonWorkingDay: August twentysixth , 2017)