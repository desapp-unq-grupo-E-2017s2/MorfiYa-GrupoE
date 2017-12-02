Accessing
systemManagingEntity: anEntity

	^ self systemManaging: anEntity ifFound: [ :system | system ] ifNotFound: [ Error signal: 'Sistema no inicializado' ]