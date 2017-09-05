tests
testAddNonWorkingDayFromADateToADate
	| calendar |
	"19 de Agosto y 26 de Agosto de 2017 son Sábados, y 20 de Agosto y 27 de Agosto de 2016 - apiorno"
	calendar := MfCalendar new.
	self
		deny: (calendar isNonWorkingDay: August nineteenth , 2017);
		deny: (calendar isNonWorkingDay: August twentysixth , 2017);
		deny: (calendar isNonWorkingDay: August twentieth , 2016);
		deny: (calendar isNonWorkingDay: August twentyseventh , 2016).
	calendar
		addNonWorkingDay: Saturday
		from: January first , 2017
		to: December thirtyfirst , 2017.
	self
		assert: (calendar isNonWorkingDay: August nineteenth , 2017);
		assert: (calendar isNonWorkingDay: August twentysixth , 2017);
		deny: (calendar isNonWorkingDay: August twentieth , 2016);
		deny: (calendar isNonWorkingDay: August twentyseventh , 2016)