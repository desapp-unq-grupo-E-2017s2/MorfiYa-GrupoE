Configuring
registerSystem: aSystem

	self
		systemManaging: aSystem describedClass
		ifFound: [ :system | Error signal: 'Error: Ya hay un sistema instalado para la entidad' ]
		ifNotFound: [ subsystems add: aSystem ]