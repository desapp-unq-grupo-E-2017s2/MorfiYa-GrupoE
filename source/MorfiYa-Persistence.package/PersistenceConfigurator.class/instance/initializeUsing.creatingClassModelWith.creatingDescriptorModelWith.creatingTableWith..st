Initialization
initializeUsing: aManagementSystem creatingClassModelWith: aCreationModelBlock creatingDescriptorModelWith: aCreationDescriptorBlock creatingTableWith: aCreationTableBlock

	describedClass := aManagementSystem describedClass.
	tableName := aManagementSystem tableName.
	platform := aManagementSystem platform.
	creatingClassModelBlock := aCreationModelBlock.
	creatingDescriptorModelBlock := aCreationDescriptorBlock.
	creatingTableBlock := aCreationTableBlock