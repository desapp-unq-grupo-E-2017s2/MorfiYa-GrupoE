private
initializeCreateObjectService

	server POST: self fullPath -> [ :req | controller addBasedOn: req contents ]